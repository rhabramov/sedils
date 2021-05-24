class Signup < ApplicationRecord
    include EmailValidatable
    validates :email, :presence => true 
    validates :email, email: true
end
