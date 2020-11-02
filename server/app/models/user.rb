class User < ApplicationRecord
  has_secure_password
    # comes from ActiveModel and add methods to set and authenticate against BCrypt passwords 
    # https://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html#method-i-has_secure_password

    # The below is a rough approximation of what the has_secure_password method is doing under the hood.     
    # attr_accessor :password
    
    # def authenticate(plaintext_password)
    #     if BCrypt::Password.new(self.password_digest) == plaintext_password
    #         self
    #     else
    #         false
    #     end
    # end
  validates :username, uniqueness: { case_sensitive: false }
    #  Validations: https://guides.rubyonrails.org/active_record_validations.html
end
