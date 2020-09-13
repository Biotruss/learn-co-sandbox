class Movies::Playing
  
  def self.playing
    # should return a bunch of instances of movies playing today
    puts <<-DOC.gsub /^\s+/, ""
    1) Joker
    2) IT 2
    DOC
  end
  
  movie_1 = self.new 
  movie_1.name = "Joker"
  movie_1.rated = "R" 
  movie_1.genres = "Crime, Drama, Thriller"
  movie_1.outline = 'In Gotham City, mentally-troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: "The Joker".'
  movie_1.director = "Todd Phillips"
  movie_1.actors = "Joaquin Phoenix, Robert De Niro, Zazie Beetz, Frances Conroy"
  
  [movie_1]
end
