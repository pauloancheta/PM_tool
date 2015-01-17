class Task < ActiveRecord::Base
  validates :title, presence: true

  def self.search(search)
    if search
      where(['name ILIKE ?', "%#{search}%"])
    else
      unscoped
    end
  end
end
  