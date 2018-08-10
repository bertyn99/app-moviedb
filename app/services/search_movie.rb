require'dotenv-rails'
require'themoviedb'

Dotenv.load
class SearchMovie
    attr_accessor :client,:search,:movie,:result
def initialize(movies)
 @client= Tmdb::Api.key(ENV['moviedb_api_key'])
 @movie =movie
 @search=Tmdb::Movie.find(@movie)
 @result=[]
end

def langue
    @client=Tmdb::Api.language("fr")
end

def perform
    @search=Tmdb::Movie.find(@movie) #rechervhe les film avec la variable b

    if !(@search).empty? #si le tableau n'est pas vide alors 
        i=0
        @result=@search.map do |s|#la boucle bug pour l'instant
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

end