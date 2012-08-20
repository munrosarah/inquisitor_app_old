class Question < ActiveRecord::Base
  attr_accessible :questionnaire_id, :type, :content, :choices
  belongs_to :questionnaire
  
  validates :questionnaire_id, presence: true
  validates :type, presence: true
  validates :content, presence: true
  
  default_scope order: 'questions.created_at DESC'
end

