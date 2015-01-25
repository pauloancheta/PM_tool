class Project < ActiveRecord::Base
  #associations
  has_many :tasks, dependent: :destroy
  has_many :discussions, dependent: :destroy

  #validations
  validates :title, presence: true, uniqueness: true

  #methods
  def self.search(search)
    if search
      where("title ILIKE '%#{search}%' OR description ILIKE '%#{search}%'")
    else
      unscoped
    end
  end
end
