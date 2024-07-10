from MyDatabase import my_open , my_query , my_close
import pandas as pd

#Data Source Nameのパラメータを辞書型変数で定義
dsn = {
    'host' : '172.30.0.10',  #ホスト名(IPアドレス)
    'port' : '3306',        #mysqlの接続ポート番号
    'user' : 'root',      #dbアクセスするためのユーザid
    'password' : '1234',    #ユーザidに対応するパスワード
    'database' : 'DBproject' #オープンするデータベース名
}

from flask import Flask,render_template ,request
#Flaskのコンストラクタ
app = Flask(__name__ ,static_folder="static")

#ルーティング定義
@app.route("/")
def top():
    dbcon,cur = my_open( **dsn )
    person_id = 'T220012'
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


@app.route("/insertHealth") #insertHelth->insertHealthにつづりを変更
def insertHealth():
    person_id = 'T220012'
    return render_template("send-body-health.html",
        person_id=person_id
    )

@app.route("/insertHealth2",methods=["POST"]) #情報の書き込み
def insertHealth2():

    #send-body-health.htmlから情報取得
    person_id = request.form["person_id"]
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
    return render_template("top.html",
                        namae=namae
    )

@app.route("/insetActivity")
def insetActivity():

    my_query(sqlstring,cur)
    recset = cur.fetchall()#コメントアウトう文
    if recset:
        namae = recset[0]['u_name']  # 辞書形式で取得
    else:
        namae = "Name not found"
    my_close(dbcon, cur)
    return render_template( "top.html",
        namae=namae
    )


#プログラム起動
app.run(host="localhost",port=5000,debug=True)

