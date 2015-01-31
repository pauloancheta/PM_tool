class Project < ActiveRecord::Base
  #associations
  belongs_to :user
  has_many :tasks, dependent: :destroy
  has_many :discussions, dependent: :destroy

  has_many :categorizations, dependent: :destroy
  has_many :categories, through: :categorizations

  has_many :members, dependent: :destroy
  has_many :users, through: :members

  has_many :favorites, dependent: :destroy
  has_many :users_favorite, through: :favorites, source: :users

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

  # def self.show_non_members(members)
  #   if members
  #     where("user_id NOT IN")
  # end

  self.per_page = 5
end
