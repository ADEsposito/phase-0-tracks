# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/students/delete' do
  erb :delete_student
end
# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# delete a student via
# a form
post '/xyz' do
  #db.execute("UPDATE students SET age = (?) WHERE name = (?)", [params['age'].to_i, params['name']])
  db.execute("DELETE FROM students WHERE name = (?)",
  #[params['age'].to_i,
  [params['name']])
 redirect '/'
end

# add static resources
