class Post < ApplicationRecord
  belongs_to :board
  
  validates :title, presence: true
  validates :body, presence: true
  validates :expires_on, presence: true
end 
