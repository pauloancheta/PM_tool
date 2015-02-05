class Tag < ActiveRecord::Base
  has_many :project_tags, dependent: :destroy
  has_many :projects, dependent: :destroy
end
