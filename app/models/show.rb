require 'pry'
class Show < ActiveRecord::Base 
  
  
  def self.highest_rating
    s = Show.maximum('rating')
  end
  
  def self.most_popular_show
    s = Show.highest_rating
    p = Show.find_by "rating == '#{s}'"
  end
    



end