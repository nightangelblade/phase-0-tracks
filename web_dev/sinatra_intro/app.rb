# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
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

# write a GET route that route that
# displays an address
get '/contact' do
  "Some neat location<br>2468 Neat Street<br>Location, Nowhere 01010"
end

# write a GET route
# takes person's name as a query parameter
# says "Good job, [person's name]" or 
# "Good job!" if no parameter
get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{params[:name]}!"
  else
    "Good job!"
  end
end

# write a GET route
# uses route parameters
# add two numbers and respond with result

get '/:number_1/add/:number_2' do
  number_1 = params[:number_1].to_i
  number_2 = params[:number_2].to_i
  result = number_1 + number_2
  "#{result}"
end

# write a GET route
# uses route parameter
# searches database for students with a certain first name

get '/:campus' do
  campus = params[:campus]
  p campus
  student = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
  student.to_s
end

=begin
It looks like there's an extensive array of different web app libraries for Ruby other than Sinatra.
One of the ones that I've heard and see now it Ruby on Rails, as well as Rack'n' Alternatives, Volt, Async, and more:
https://github.com/planetruby/awesome-webframeworks

Alternative database software that work with Sinatra other than SQLite can be ActiveRecord, Couchdb, Datamapper, Mongo, and Ohm, although Datamapper isn't as strongly recommended for use with Sinatra.
ActiveRecord appears to be the recommended alternatve, since it was also created by the creator of Sinatra
http://recipes.sinatrarb.com/p/models

Web stack is usually referred to as a collection of software required for web development, usually requiring an operating system, programming language, database software, and Web server at the minimum.
It is also one tyoe of what is called a "solution stack" which is an ordered collection of software that performs a specific task.
=end