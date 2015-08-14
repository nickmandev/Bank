class User < ActiveRecord::Base


  validates_uniqueness_of  :username
  validates :name, :presence => true
  validates :password, length: {:minimum => 4}

  before_save :encrypt_password
  def self.has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end

  def self.authenticate(email,submitted_password)
    user = find_by_email(email)

    return nil if user.nil?
    return user if user.has_password?(submitted_password)

  end

end
