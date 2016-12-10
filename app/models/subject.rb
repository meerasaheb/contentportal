class Subject < ApplicationRecord
	has_many :topics
	accepts_nested_attributes_for :topics
	 
	# accepts_nested_attributes_for :room_categories,
 #                                reject_if: proc { |attributes| attributes['name'].blank? }
end
