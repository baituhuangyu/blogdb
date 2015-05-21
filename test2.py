# -*- coding: utf-8 -*-

# 加载模块
import sys
import MySQLdb

# 设置默认编码为UTF-8，否则从数据库
# 读出的UTF-8数据无法正常显示
reload(sys)
sys.setdefaultencoding('utf-8')
sql = "insert into person(name, age, telephone) values(%s, %s, %s)"

tmp = (('ninini', 89, '888999'), ('koko', 900, '999999'))

# 连接数据库
conn = MySQLdb.Connection(host="localhost", user="root", passwd="root", charset="UTF8")
conn.select_db('writeresdmysqltest')

# 创建指针，并设置数据的返回模式为字典
cursor = conn.cursor(MySQLdb.cursors.DictCursor)

# 执行SQL
cursor.executemany(sql, tmp)

# 关闭指针
cursor.close()

# 关闭数据库连接
conn.close()
