require 'pry'
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    name = self.actors.maps do |t| 
    binding.pry 
  end 
end