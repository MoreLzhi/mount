class Continent < ActiveRecord::Base
  attr_protected :secret
  
  has_many :regions 
  has_many :mounts, :through => :regions
  has_many :routes, :through => :mounts   
  #name
  
end
