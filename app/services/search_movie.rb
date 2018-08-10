require'dotenv-rails'
require'themoviedb'

Dotenv.load
class SearchMovie
    attr_accessor :client,:search,:movie
def initialize(movie)
 @client= Tmdb::Api.key(ENV['moviedb_api_key'])
 @search = Tmdb::Search.new
 @movie =movie
end

def language
    @client=Tmdb::Api.language("fr")
end

def perform(b='batman')
    @search=Tmdb::Movie.find(b) #revhervhe les film avec la variable b

    if !(@search).empty?
        i=0
        @search.each do |s|
            s[i].title
            s[i].release_date
            s[i].poster_path
            i+=1
        end
    #     # @movie.title
    #     # @movie.release_date
    #     # movie.poster_path
    #     #end

     end
end

def film
    
end
end