# class Movie < ActiveRecord::Base
  
#   def self.all_ratings
#     %w(G PG PG-13 NC-17 R)
#   end
# end
class Movie < ActiveRecord::Base
    def self.with_ratings(ratings_list)
        # if ratings_list is an array such as ['G', 'PG', 'R'], retrieve all
        #  movies with those ratings
        # if ratings_list is nil, retrieve ALL movies
        if(ratings_list == [])
            return Movie.all
        else
            return Movie.where(rating: ratings_list)
        end
    end
    
    def self.all_ratings
       ['G', 'PG', 'PG-13', 'R', 'NC-17'] 
    end
end
