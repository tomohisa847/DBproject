from MyDatabase import my_open , my_query , my_close
import pandas as pd
import sqlite3
from flask import Flask, request, render_template, session, redirect, url_for, make_response
import datetime
#Data Source Nameのパラメータを辞書型変数で定義
dsn = {
    'host' : '172.30.0.10',  #ホスト名(IPアドレス)
    'port' : '3306',        #mysqlの接続ポート番号
    'user' : 'root',      #dbアクセスするためのユーザid
    'password' : '1234',    #ユーザidに対応するパスワード
    'database' : 'DBproject' #オープンするデータベース名
}
#Flaskのコンストラクタ
app = Flask(__name__ ,static_folder="static")
app.secret_key = 'your_secret_key'
#これないと終わる。
def add_no_cache_headers(response):
    response.headers['Cache-Control'] = 'no-store, no-cache, must-revalidate, post-check=0, pre-check=0, max-age=0'
    response.headers['Pragma'] = 'no-cache'
    response.headers['Expires'] = '-1'
    return response

# 起動時に一度だけ実行されるフラグ
initial_run = True

#tesuttesto
@app.before_request
def before_request():
    global initial_run
    if initial_run:
        session.clear()
        initial_run = False
    # ログインが必要なページを定義
    login_required_paths = ['/']
    # ログインが不要なページを定義
    login_exempt_paths = ['/login', '/login1']
    if request.path not in login_exempt_paths:
        if 'person_id' not in session:
            return redirect(url_for('login'))



#testとりあえず保留
@app.after_request
def after_request(response):
    # ログアウト後のキャッシュを無効化
    if request.endpoint == 'logout':
        response = add_no_cache_headers(response)
    return response

#ルーティング定義
@app.route("/")
def top():
    if 'person_id' not in session:
        return redirect(url_for('login'))
    dbcon,cur = my_open( **dsn )
    person_id = session['person_id']
    sqlstring = f"""
        SELECT *
        FROM PersonalInfo
        WHERE person_id = '{person_id}'
        ;
    """
    my_query(sqlstring,cur)
    recset = cur.fetchall()
    if recset:
        namae = recset[0]['u_name']  # 辞書形式で取得
    else:
        namae = "Name not found"
    my_close(dbcon, cur)
    return render_template( "top.html",
        namae=namae
    )

@app.route("/login")
def login():
    return render_template( "login.html")
#ここに管理者がログイン出来るシステムをつくる
@app.route("/login1",methods=["POST"])
def login1():
    dbcon,cur = my_open( **dsn )
    person_id = request.form["username"]
    password = request.form["password"]
    sqlstring =f"""
        select person_id,pass
        from PersonalInfo
        where person_id ='{person_id}' and pass ='{password}'
        ;
    """
    my_query(sqlstring,cur)
    recset = cur.fetchall()
    my_close(dbcon,cur)
    print(recset)
    if len(recset)==0:
        isId='null'
        isPas='null'
    else:
        isId = recset[0]["person_id"]
        isPas = recset[0]['pass']
    
    if isId==person_id and isPas==password:
        if isId=='S-USER01' and isPas=='12345':
            session['person_id'] = person_id
            return redirect(url_for('superuser'))
        session['person_id'] = person_id
        return redirect(url_for('top'))
    else:
        session.clear()
        return render_template("debug.html",
            debug = 'ユーザーIDとパスワードどちらかが間違っています。'
        )
    #ここまでの処理を終わりにしたいです。

@app.route("/superuser")
def superuser():
    return render_template("top-superuser.html")

@app.route("/search",methods=["POST","GET"])
def search():
    dbcon,cur = my_open( **dsn )
    person_id = request.form["person_id"]
    option = request.form["option"]
    #体調管理画面
    if option == "health_observation":
        tableName = 'HealthStatus'
        #ユーザの健康管理記録を取得
        sqlstring = f"""
            SELECT *
            FROM HealthStatus
            WHERE person_id = '{person_id}'
            AND delflag=false
            ;
        """
        my_query(sqlstring,cur)
        recset = pd.DataFrame(cur.fetchall())
        my_close(dbcon, cur)
       
        dbcon,cur = my_open( **dsn )
        sqlstring = f"""
            SELECT u_name
            FROM PersonalInfo
            WHERE person_id = '{person_id}'
            ;
        """
        my_query(sqlstring,cur)
        rec_name = pd.DataFrame(cur.fetchall())
        my_close(dbcon, cur)

        namae=rec_name['u_name'][0]

        return render_template("show-superuser-bodyhealth.html",
            title="健康管理記録",
            table_data=recset,
            namae = namae
        )

    #行動記録画面
    elif option == "activity_record":
        tableName = 'ActivityLog'
        sqlstring =f"""
            select *
            from {tableName}
            where person_id = '{person_id}'
            AND delflag=false
            ;
        """
        my_query(sqlstring,cur)
        recset = pd.DataFrame(cur.fetchall())
        #データフレーム内の各値を格納
        recset.columns = [desc[0] for desc in cur.description]
        records = recset.to_dict('records')
        my_close(dbcon, cur)
        return render_template("show-superuser-actionlog.html", records=records)
    #個人情報参照画面    
    elif option == "personal_information":
        tableName = 'PersonalInfo'
        sqlstring = f""" 
            select affiliation,position,phone_number,email,u_name
            from {tableName}
            where person_id = '{person_id}'
            ;
        """    
        my_query(sqlstring,cur)
        recset = cur.fetchall()
        row_data = recset[0]
        my_close(dbcon, cur)
        return render_template("show-superuser-personalinfo.html",
            title = "管理者用個人情報参照画面",
            person_id = person_id,
            row_data = row_data
        )
    #同行者名を表示
    else:
        #同行者の名前を出すための処理とhtmlを作成
        sqlstring = f"""
        SELECT DISTINCT companion_name,start_time,end_time
        FROM ActivityLog
        WHERE person_id = '{person_id}' AND companion_present = TRUE
        ;
        """
        my_query(sqlstring,cur)
        recset = cur.fetchall()
        my_close(dbcon,cur)
        return render_template("show-superuser-companion.html",
            title = "同行者参照画面",
            person_id = person_id,
            row_data = recset
        )
    

    

    

@app.route("/logout")
def logout():
    session.pop('person_id', None)
    response = redirect(url_for('login'))
    response = add_no_cache_headers(response)
    return response



@app.route("/insertHealth") #insertHelth->insertHealthにつづりを変更
def insertHealth():
    person_id = session["person_id"]
    return render_template("send-body-health.html",
        person_id=person_id
    )

@app.route("/insertHealth2",methods=["POST"]) #情報の書き込み
def insertHealth2():

    #send-body-health.htmlから情報取得
    person_id = session["person_id"]
    temperature = request.form["temperature"]

    joint_pain = request.form.get("arthralgia") 
    fatigue = request.form.get("sluggishness")
    headache = request.form.get("headache")
    sore_throat = request.form.get("pharyngalgia")
    shortness_of_breath = request.form.get("breathlessness")
    cough_sneeze = request.form.get("cough")
    nausea_vomiting = request.form.get("nausea")
    stomach_ache_diarrhea = request.form.get("stomachache")
    taste_disorder = request.form.get("dysgeusia")
    smell_disorder = request.form.get("olfactory disorder")

    #値を取得できなかった場合、変数にfalseを格納
    if joint_pain==None: 
        joint_pain='false'

    if fatigue==None: 
        fatigue='false'

    if headache==None: 
        headache='false'

    if sore_throat==None: 
       sore_throat='false'

    if shortness_of_breath==None: 
       shortness_of_breath='false'

    if cough_sneeze==None: 
       cough_sneeze='false'

    if nausea_vomiting==None: 
       nausea_vomiting='false'
    
    if stomach_ache_diarrhea==None: 
       stomach_ache_diarrhea='false'

    if taste_disorder==None: 
       taste_disorder='false'

    if smell_disorder==None: 
       smell_disorder='false'
    
    
    #現在の時間取得
    import datetime
    health_date = datetime.date.today()

    dbcon,cur = my_open( **dsn )
   
    sqlstring = f"""
        INSERT INTO HealthStatus
        (person_id,
        temperature,
        joint_pain,
        fatigue,
        headache,
        sore_throat,
        shortness_of_breath,
        cough_sneeze,
        nausea_vomiting,
        stomach_ache_diarrhea,
        taste_disorder,
        smell_disorder,
        health_date,
        delflag)
        VALUES
        ('{person_id}',
        {temperature},
        {joint_pain},
        {fatigue},
        {headache},
        {sore_throat},
        {shortness_of_breath},
        {cough_sneeze},
        {nausea_vomiting},
        {stomach_ache_diarrhea},
        {taste_disorder},
        {smell_disorder},
        '{health_date}',
        false)
        ;
    """
    my_query(sqlstring,cur)

    #テーブルに書き込み
    dbcon.commit()
    my_close(dbcon, cur)


@app.route("/showHealth") 
def showHealth():
    person_id = session["person_id"]
    print(person_id)
    dbcon,cur = my_open( **dsn )

    #ユーザの健康管理記録を取得
    sqlstring = f"""
        SELECT *
        FROM HealthStatus
        WHERE person_id = '{person_id}'
        AND delflag=false
        ;
    """
    my_query(sqlstring,cur)
    recset = pd.DataFrame(cur.fetchall())
    my_close(dbcon, cur)

    if recset.empty:
        return render_template("message.html",
        title="健康管理記録",
        message="データがありません"
    )
        

    dbcon,cur = my_open( **dsn )
    sqlstring = f"""
        SELECT u_name
        FROM PersonalInfo
        WHERE person_id = '{person_id}'
        ;
    """
    my_query(sqlstring,cur)
    rec_name = pd.DataFrame(cur.fetchall())
    my_close(dbcon, cur)

    namae=rec_name['u_name'][0]

    return render_template("show-body-health.html",
        title="健康管理記録",
        table_data=recset,
        namae = namae
    )

@app.route("/deleteHealth",methods=["POST"]) 
def deleteHealth():
    #ユーザのIDとテーブルのIDを取得
    person_id = session["person_id"]
    symptom_id=request.form["record_id"]

    dbcon,cur = my_open( **dsn )

    #delfalgをtrueに変更
    sqlstring = f"""
        UPDATE HealthStatus
        SET delflag = true
        WHERE symptom_id = {symptom_id}
        ;
    """
    my_query(sqlstring,cur)

   #テーブルに書き込み
    dbcon.commit()  
    my_close(dbcon, cur)

    dbcon,cur = my_open( **dsn )
   #ユーザの健康管理記録を取得
    sqlstring = f"""
        SELECT *
        FROM HealthStatus
        WHERE person_id = '{person_id}'
        AND delflag=false
        ;
    """
    my_query(sqlstring,cur)
    recset = pd.DataFrame(cur.fetchall())
    
    dbcon,cur = my_open( **dsn )
    sqlstring = f"""
        SELECT u_name
        FROM PersonalInfo
        WHERE person_id = '{person_id}'
        ;
    """
    my_query(sqlstring,cur)
    rec_name = pd.DataFrame(cur.fetchall())
    my_close(dbcon, cur)

    namae=rec_name['u_name'][0]

    return render_template("show-body-health.html",
        title="健康管理記録",
        table_data=recset,
        namae = namae
    )

@app.route("/insertActivity1")
def insertActivity1():
    return render_template( "send-actionlog.html")
#個々マージの時に消してくれ
@app.route("/makeconfrict")
def makeconfrict():
    print("test")
    print("test")
    print("test")
    print("test")
    print("test")
    print("test")
    print("test")
    print("test")
    print("test")
    print("test")
    print("test")
    print("test")
    print("test")
    print("test")
    print("test")
    print("test")
    return "confrict"

@app.route("/insertActivity2",methods=['GET','POST'])
def insertActivity2():
    #開始時間と終了時間の取得　
    start = request.form["start"]
    stop = request.form["stop"]
    # datetime-local から datetime への変換

    #formatted_datetime = current_datetime.strftime(start,'%Y-%m-%d %H:%M:%S')


    #start_datetime = datetime.strptime(start, '%Y-%m-%dT%H:%M')
    #stop_datetime = datetime.strptime(stop, '%Y-%m-%dT%H:%M')
    # マイクロ秒を追加
    #start_datetime = start_datetime.replace(microsecond=0)
    #stop_datetime = stop_datetime.replace(microsecond=0)
    #出発地点と通過地点と到着地の取得
    departure = request.form["departure"]
    transit_address1 = request.form.get('transit_address1')
    transit_address2 = request.form.get('transit_address2')
    transit_address3 = request.form.get('transit_address3')
    destination = request.form["destination"]
    #移動手段を取得
    way = request.form["way"]
    #同行者の有無を取得してありなら名前を聞く
    companion = request.form["companion"]
    if companion:
        companion_boolen=1
    else:
        companion_boolen=0
    accompanying = request.form["accompanying"]
    #特記事項を取得
    note = request.form["note"]
    #更新時間取得
    datetime_now = datetime.datetime.now()
    #SQLオープン
    dbcon,cur = my_open( **dsn )
    #とりあえずpersonIDはこれ
    person_id = session['person_id']

    #SQL INSERTの場所
    sqlstring = f"""
        INSERT INTO ActivityLog(
            person_id, start_time, end_time, transport_method, 
            departure_address, transit_address1, transit_address2, 
            transit_address3, arrival_address, companion_present, 
            companion_name, special_notes, last_update, delflag
        ) VALUES ('{person_id}', '{start}','{stop}','{way}','{departure}','{transit_address1}',
        '{transit_address2}','{transit_address3}','{destination}','{companion_boolen}','{accompanying}','{note}','{datetime_now}', 0)
        ;
    
    """
    #クエリ実行
    my_query(sqlstring,cur)
    dbcon.commit()
    my_close(dbcon,cur)
    if companion:
        exsit = 'あり'
    else:
        exsit = 'なし'
    return render_template( "send-actionlog-confirm.html",
        title = "登録完了画面",
        message = f"""
                    以下の内容で登録しました。
                    開始: {start}
                    終了: {stop}
                    出発地点: {departure}
                    中継地点1: {transit_address1}
                    中継地点2: {transit_address2}
                    中継地点3: {transit_address3}
                    目的地: {destination}
                    移動手段: {way}
                    同行者有無: {exsit}
                    同行者名: {accompanying}
                    特記事項: {note}
                """
    )

@app.route("/showActivity",methods=['GET','POST'])
def showActivity():
    dbcon,cur = my_open( **dsn )
    person_id = session['person_id']
    sqlstring = f"""
    SELECT person_id,companion_name
    FROM  ActivityLog
    WHERE person_id = '{person_id}' 
    AND delflag = 'true' 
    AND companion_present = 'true'
    ;
    """
    my_query(sqlstring,cur)
    recset = pd.DataFrame(cur.fetchall())

    #データフレーム内の各値を格納
    recset.columns = [desc[0] for desc in cur.description]

    records = recset.to_dict('records')
    
    print(records)
    my_close(dbcon, cur)
    return render_template("show-actionlog.html", records=records)



@app.route("/insertInfect1")
def insertInfect1():
    dbcon,cur = my_open( **dsn )
    person_id = session['person_id']
    sqlstring = f"""
    SELECT companion_name
    FROM ActivityLog
    WHERE person_id = '{person_id}'
    AND delflag=false
    AND companion_present = true
    ;
    """
    my_query(sqlstring,cur)
    recset = cur.fetchall()
    my_close(dbcon, cur)
    companions = recset
    return render_template("send-infect.html", 
        companions = companions
    )

@app.route("/insertInfect2",methods=["GET","POST"])
def insertInfect2():
    dbcon,cur = my_open( **dsn )
    person_id = session["person_id"]
    companion_present = request.form["companion_present"]
    diagnosis_date = request.form["date-received"]
    sqlstring = f"""
        INSERT INTO infect(person_id,infected,companion_present,diagnosis_date) 
        VALUES ('{person_id}', True, {companion_present},'{diagnosis_date}')
        ;
    
    """
    my_query(sqlstring,cur)
    dbcon.commit()
    my_close(dbcon,cur)
    
    return render_template("debug.html")
    

#プログラム起動
app.run(host="localhost",port=5000,debug=True)
