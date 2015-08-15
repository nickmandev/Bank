require 'bcrypt'
class User < ActiveRecord::Base

  has_secure_password

  #attr_accessor :password


  validates_uniqueness_of  :email
  validates :name, :presence => true
  validates :password, :presence => true,
            length: {:minimum => 4}

end
