class Project < ActiveRecord::Base

  validates :title, presence: true, uniqueness: true

  def self.search(search)
    if search
      where("title ILIKE '%#{search}%' OR description ILIKE '%#{search}%'")
    else
      unscoped
    end
  end
end
