class Task < ActiveRecord::Base
  #associations
  belongs_to :user
  belongs_to :project

  #validations
  validates :title, presence: true, uniqueness: {scope: :project_id}
end
  