class Beer < ApplicationRecord
    VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    validates :brand, :name, presence: true, length: {in: 2..10 } 
    validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
    validates :email, uniqueness: {case_sensitive: false} 
end
