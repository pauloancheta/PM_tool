class Comment < ActiveRecord::Base
  #associations
  belongs_to :discussion

  #validations
  validates :body, presence: true
end
