class Show < ActiveRecord::Base
   has_many :characters
   belongs_to :network
   def actors_list
     hash = {}
     self.characters.each do |item|

       hash = {name: item.actor.first_name + " " + item.actor.last_name}
       has
       binding.pry
     end
   end
end
