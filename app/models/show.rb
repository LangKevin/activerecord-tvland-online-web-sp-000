class Show < ActiveRecord::Base
   has_many :characters
   belongs_to :network
   def actors_list
     hash = {}
     self.characters.each |item|
      #  binding.pry
      #  hash = {name: item.actor.first_name + item.actor.last_name}
     end
   end
end
