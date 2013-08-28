class User < ActiveRecord::Base
  before_save { |user| user.email = user.email.downcase }
  # before_save :remeber_token
  has_secure_password #this adds password to this class

  validates :name, presence: true,
                   length: { maximum: 50 }
  
  validates :password, presence: true,
                   length: { minimum: 5 }
  validates :password_confirmation, presence: true
                      

  EMAIL_REGEX = /[\w-]+@([\w-]+\.)+[\w-]+/i
  validates :email, presence: true,
                    format: { with: EMAIL_REGEX },
                    uniqueness: { case_sensative: false}
                    
# def password
#   @password
# end
# def password=(new_password)
#   self.password_digest = new_password
# end
# def remeber_token
#   self.remeber_token = Random
# end
end
