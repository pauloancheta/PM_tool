class Discussion < ActiveRecord::Base
  #associations
  belongs_to :project
  has_many :comments

  #validations
  validates :title, presence: true
end
