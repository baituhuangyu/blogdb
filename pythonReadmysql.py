'''
the demo is read data from mysql databases
use mysql.connector,so you should install the MySQL dirver for Python :mysql-connector-python
'''
__author__:hunangyu


import mysql.connector

def blogDatabasesRead():
  #connect mysql database
  cnx = mysql.connector.connect(host='127.0.0.1', user='root', passwd='root', database='blogdb',charset='gbk')
  print "connection is ok!"
  #set open read cursor
  cursor = cnx.cursor()

  #mysql Operation
  query = ("SELECT blogname, author, posttime , blogcategory , blogcontent FROM blog "  
           "WHERE id BETWEEN %s AND %s")

  #set read Range of database
  id_start = 1 
  id_end = 3
  i = 0
  blognameList = ["","",""]

  #start read database
  cursor.execute(query, (id_start, id_end))  
  for (blogname, author, posttime , blogcategory , blogcontent) in cursor:
    blognameList[i]= blogname
    print blognameList[i]
    ++i

  cursor.close()  
  cnx.close()


print blogDatabasesRead()
 
##print blognameList
##blog_name = blogDatabasesRead()
##
##for i in blog_name:
##  print i.encode("gbk")
