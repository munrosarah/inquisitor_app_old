class Questionnaire < ActiveRecord::Base
  attr_accessible :title
  has_many :questions
  
  validates :title, presence: true
  
end
