module Movie
  class CLI 
    
    def call
    list_movies
    menu
    good_bye
  end

  def list_movies
    puts "Movies in theaters:"
    @movie = Movie::Movies.playing
    @movie.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.name} - #{movie.rated} - #{movie.genres}"
      puts "#{movie.outline}"
      puts "Directed by: #{movie.director}"
      puts "Starring: #{movie.actors}."
      puts ""
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the movie you'd like more info on or type list to see the list of movies again or type exit:"
      input = gets.strip.downcase
      
      if input.to_i > 0 
        the_movie = @movie[input.to_i - 1]
        puts "#{the_movie.name} - #{the_movie.rated} - #{the_movie.genres}"
        puts "#{the_movie.outline}"
        puts "Directed by: #{the_movie.director}"
        puts "Starring: #{the_movie.actors}."
        puts ""
      elsif input == "list"
        list_movies
      elsif input == "exit"
        puts ""
      else
        puts "Not sure what you want. Type in the number of the movie you want more info
        on or type list or exit."
      end
    end
  end

  def good_bye
    puts "Come back for more info on movies playing in theaters!"
  end
    
  end
end