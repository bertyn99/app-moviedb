require'dotenv-rails'
Dotenv.load
class Themoviedb
    attr_accessor :client
def initialize
 @client= Tmdb::Api.key(ENV[:moviedb_api_key])
end

def language
    Tmdb::Api.language("fr")
end

def perform
    Tmdb::Movie.find("batman")
end
end