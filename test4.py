
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
  blognameList=[[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]]

  #start read database
  cursor.execute(query, (id_start, id_end))
  for (blogname, author, posttime , blogcategory , blogcontent) in cursor:
    blognameList[i][0]= blogname
    blognameList[i][1]= author
    blognameList[i][2]= posttime
    blognameList[i][3]= blogcategory
    blognameList[i][4]= blogcontent
    i += 1
  cursor.close()
  cnx.close()

  return blognameList
blodlist = blogDatabasesRead()

##print blodlist[0][0]
##print blodlist[1][0]
##print blodlist[2][0]
print blodlist[0][0:3]

##print blognameList
##blog_name = blogDatabasesRead()
##
##for i in blog_name:
##  print i.encode("gbk")





