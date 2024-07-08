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

# キャッシュを無効化するための関数
def add_no_cache_headers(response):
    response.headers['Cache-Control'] = 'no-store, no-cache, must-revalidate, post-check=0, pre-check=0, max-age=0'
    response.headers['Pragma'] = 'no-cache'
    response.headers['Expires'] = '-1'
    return response

@app.before_request
def before_request():
    # ログインが必要なページを定義
    login_required_paths = ['/']
    if request.path in login_required_paths:
        if 'person_id' not in session:
            return redirect(url_for('login'))

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
        session['person_id'] = person_id
        return redirect(url_for('top'))
    else:
        return render_template("debug.html",
            debug = 'ユーザーIDとパスワードどちらかが間違っています。'
        )

@app.route("/logout")
def logout():
    session.pop('person_id', None)
    return redirect(url_for('login'))


@app.route("/insertHelth")
def insertHelth():
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

@app.route("/insertActivity1")
def insertActivity1():
    return render_template( "send-actionlog.html")

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


#プログラム起動
app.run(host="localhost",port=5000,debug=True)

