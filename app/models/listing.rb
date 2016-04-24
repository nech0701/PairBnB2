class Listing < ActiveRecord::Base
	
	mount_uploaders :showrooms, ShowroomUploader

	belongs_to :user
	has_many :reservations
end
