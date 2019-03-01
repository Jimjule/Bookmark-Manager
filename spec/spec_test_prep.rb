require 'pg'

def load_test_database
  con = PG.connect( dbname: 'bookmark_manager_test')
  con.exec("DROP TABLE IF EXISTS bookmarks;")
  con.exec("CREATE TABLE bookmarks (id SERIAL PRIMARY KEY, url VARCHAR(60), title VARCHAR(60));")
  con.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'Makers')")
  con.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.google.com', 'Google')")
  con.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.destroyallsoftware.com', 'Uhhhh');")
end
