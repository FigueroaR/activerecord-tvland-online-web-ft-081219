require 'pry'
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    name = self.actors.map {|t| t.first_name + " " + t.last_name}
    name.join(", ")
    name
    #binding.pry 
  end 
end