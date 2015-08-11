class User < ActiveRecord::Base


  validates_uniqueness_of  :username
  validates :name, :presence => true
  validates :password, length: {:minimum => 4}


end
