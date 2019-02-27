require 'pg'

def load_test_database
  con = PG.connect( dbname: 'bookmark_manager_test')
  con.exec("TRUNCATE TABLE bookmarks;")
  con.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'Makers')")
  con.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.google.com', 'Google')")
  con.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.destroyallsoftware.com', 'Uhhhh');")
end
