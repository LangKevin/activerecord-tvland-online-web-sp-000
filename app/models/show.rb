class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  def actors_list
    arr = []
    arr << [self.actors.pluck(:first_name) + self.actors.pluck(:last_name)].flatten.join(" ")
    # self.actors.pluck(:first_name, :last_name).first.flatten.join(" ")
  end
end
