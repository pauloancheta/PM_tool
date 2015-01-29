class Project < ActiveRecord::Base
  #associations
  belongs_to :user
  has_many :tasks, dependent: :destroy
  has_many :discussions, dependent: :destroy

  has_many :categorizations, dependent: :destroy
  has_many :categories, through: :categorizations

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

  self.per_page = 5
end
