class Movies::CLI

  def call
    list_movies
    menu
    good_bye
  end

  def list_movies
    puts "Enter the number of the movie you'd like more info on:"
    @movies = Movie::Movies.playing
  end

  def menu
    puts "Enter the number of the movie you'd like more info on or type list to see the list of movies again or type exit:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "more info in movie 1"
      when "2"
        puts "more info on movie 2"
      when "list"
        list_movies
      when "exit"
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