import MySQLdb

conn = MySQLdb.connect(host='127.0.0.1',user='hy',passwd='123456',db='test')
print "connection is ok!"

conn.autocommit(False)
#conn.autocommit(True)

cursor = conn.cursor()

#MySQLdb execute can craete procedure
sql = "CREATE PROCEDURE demo_proc(IN p_in int,OUT p_out int) \
BEGIN \
     set p_out=2; \
END"
cursor.execute(sql)
print "procedure created suceefully!!"
