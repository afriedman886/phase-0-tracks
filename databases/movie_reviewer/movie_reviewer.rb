# BUSINESS LOGIC

require 'sqlite3'

db = SQLite3::Database.new("movies.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS movie_reviews(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    rating INT,
    recommended BOOLEAN,
    comments VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)

def new_review(db, name, rating, recommended, comments)
  db.execute("INSERT INTO movie_reviews (name, rating, recommended, comments) VALUES (?, ?, ?, ?)", [name, rating, recommended, comments])
end




# USER INTERFACE

# Ask user about new movie to review

puts "What movie did you see?"
new_movie = gets.chomp

puts "On a scale from 1-5, what would you rate the movie?"
user_rating = gets.chomp.to_i

puts "Would you recommend the movie to a friend? (yes/no)"
recommendation_response = ""
until recommendation_response.downcase == "yes" || recommendation_response.downcase == "no"
  recommendation_response = gets.chomp
  if recommendation_response.downcase == "yes"
    user_recommendation = "true"
  elsif recommendation_response.downcase == "no"
    user_recommendation = "false"
  else
    puts "I'm sorry, I didn't understand your response, please answer 'yes' or 'no'"
  end
end

puts "Any additional thoughts/comments about the movie?"
comments_response = gets.chomp
if comments_response.downcase == "no"
  user_comments = "N/A"
else user_comments = comments_response
end

# Add new review to movies database

new_review(db, new_movie, user_rating, user_recommendation, user_comments)

# Create option to sort/view movies by rating or view movies of only a particular rating