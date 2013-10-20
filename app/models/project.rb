class Project < ActiveRecord::Base
  attr_accessible :description, :title, :image, :remote_image_url

  has_many :user_projects
  has_many :users, :through => :user_projects
  mount_uploader :image, ImageUploader
end
