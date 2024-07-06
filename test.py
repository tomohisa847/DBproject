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

@app.route("/insertActivity1")
def insertActivity1():
    return render_template( "send-actionlog.html")

@app.route("/insertActivity2",methods=['GET','POST'])
def insertActivity2():
    #開始時間と終了時間の取得　
    start = request.form["start"]
    stop = request.form["stop"]
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
    accompanying = request.form["accompanying"]
    #特記事項を取得
    note = request.form["note"]

    return render_template( "send-actionlog-show.html",
        title = "登録完了画面",
        message = way
    )


#プログラム起動
app.run(host="localhost",port=5000,debug=True)

