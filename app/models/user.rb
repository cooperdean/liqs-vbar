class User < ActiveRecord::Base

  has_secure_password
  attr_accessor :password

end