movies = {
  'avatar': 5
}
puts 'Add, update, display or delete?'
choice = gets.chomp

case choice
  when "add"
    puts "Movie title?"
    title = gets.chomp
    puts "Rating?"
    rating = gets.chomp
    if movies[title.to_sym] = nil
      movies[title.to_sym] = rating.to_i
      puts "Movie and rating added"
    else
      puts "Movie already exists"
    end
  when "update"
    puts "Type in movie title to update rating"
    title = gets.chomp
    if movies[title.to_sym] == nil
      puts "No movie found"
    else
      puts "Give new rating"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "Updated rating"
    end
  when "display"
    movies.each {|movie, rating| puts "#{movie}: #{rating}"}
  when "delete"
    puts "Title of movie to delete?"
    title = gets.chomp
    if movies[title.to_sym] == nil
      puts "Error movie not found"
    else
      movies.delete(title.to_sym)
      puts "Deleted!"
    end
  else
    puts "Error!"
end
