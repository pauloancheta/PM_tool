class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #associations
  has_many :projects, dependent: :nullify
  has_many :tasks, dependent: :nullify
  has_many :comments, dependent: :nullify
  has_many :discussions, dependent: :nullify

  has_many :members, dependent: :nullify
  has_many :project_members, through: :members, source: :project

  has_many :favorites, dependent: :nullify
  has_many :favorite_projects, through: :favorites, source: :project
end
