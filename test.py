from MyDatabase import my_open , my_query , my_close
import pandas as pd
import sqlite3
from flask import Flask, request, render_template, session, redirect, url_for, make_response
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
    response = redirect(url_for('login'))
    response = add_no_cache_headers(response)
    return response


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

