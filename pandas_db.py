import pandas as pd
import numpy as np
import json
import pymysql


# DB 연결
con = pymysql.connect(
    host = '127.0.0.1',
    user = 'root',
    password = 'suho1999',
    db = 'km_signal',
    port = 3307,
    charset = 'utf8',
    #as_dict = True
    )

# DictCursor를 사용하면 dictionary형태로 결과를 반환함 (일반 cursor는 튜플)
cur = con.cursor(pymysql.cursors.DictCursor)

# SQL
select_sql = "SELECT * FROM department_volunteer_attribute2;"
cur.execute(select_sql)

# fetchall() : 모든 데이터 호출, fetchone() : 한 번 호출에 하나의 행, fetcgmany(n) : n개만큼 데이터를 호출

result = cur.fetchall()
result = pd.DataFrame(result)

#print(result)

# orient의 매개변수는 columns,records,split,table,index등이 있다
json_test = result.to_json(orient = 'columns')

# json을 외부 파일로 보내기
result.to_json("D:\캡스톤디자인\json_file\department_volunteer_attribute2.json", orient = 'columns')

print(json_test)

# DB 종료
con.close()
