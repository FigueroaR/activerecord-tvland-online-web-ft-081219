require 'pry'
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    name = self.actors.maps {|t| t.first_name} 
    binding.pry 
  end 
end