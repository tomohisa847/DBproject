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
    person_id = 'S260007'
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

@app.route("/login1")
def login1():
    dbcon,cur = my_open( **dsn )
    person_id = request.form["user"]
    password = request.form["password"]
    sqlstring =f"""
        select person_id,pass
        from PersonalInfo
        where person_id ='{person_id}' and pass ='{password}'
        ;
    """
    my_query(sqlstring,cur)
    dbcon.commit()
    return render_template( "login.html")



@app.route("/insertHelth")
def insertHelth():
    dbcon,cur = my_open( **dsn )
    person_id = 'S260007'
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

