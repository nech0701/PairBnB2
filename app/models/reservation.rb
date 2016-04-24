class Reservation < ActiveRecord::Base
	has_many :users
	has_many :payments
	belongs_to :listing

end
