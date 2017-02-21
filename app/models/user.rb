class User < ActiveRecord::Base
include BCrypt
 has_many :subscriptions
validates :email, :password, presence: true
validates :email, uniqueness: true 

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.hashed_password = @password
  end 

  def authenticate(valid_password)
  	self.password == valid_password
  end 
  # Remember to create a migration!
end
