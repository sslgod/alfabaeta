class Site < ActiveRecord::Base
	attr_accessible :id, :name, :image, :url, :public, :about, :price, :seats, :winner, :active_date
  has_many :comments
  has_many :reports
  mount_uploader :image, ImageUploader
  
end
