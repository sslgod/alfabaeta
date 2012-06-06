class Report < ActiveRecord::Base
	attr_accessible :id, :comment, :site_id, :user_id, :file
	belongs_to :user
 	belongs_to :site
 	mount_uploader :file, FileUploader
end
