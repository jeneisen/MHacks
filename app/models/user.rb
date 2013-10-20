class User < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :user_projects
  has_many :projects, :through => :user_projects

  validates :email, :uniqueness => true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :update, :allow_nil => true
end
