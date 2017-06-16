# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  name = params[:name]
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

get '/contact' do
   "Address: 123 Market St, San Francisco CA"
end

get '/great_job' do
   if params['name']
     "Good job, #{params['name'].capitalize}! "
   else
     "Good Job!"
   end
end

get '/:number1/plus/:number2' do
  sum = params[:number1].to_i + params[:number2].to_i
  sum.to_s
end

get '/search_name/:term' do
    student = db.execute("SELECT * FROM students WHERE name=?", [params[:term]])[0]
    student.to_s
end

=begin
1. There seems to be a lot. I googled 'Sinatra alternatives' and found a bunch. Padrino and Cuba are two that seem to come up often.

2. Besides SQLite there is MySQL, MongoDB and PostgreSQL.

3. A web stack is the collection of software required for Web development. Includes usually an Operating System, programming language, database software, and a web server. A common example is LAMP (Linux, Apache, MySQL, and PHP)

=end