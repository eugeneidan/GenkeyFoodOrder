class Menu < ActiveRecord::Base

	has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
	
	#Associations
	has_and_belongs_to_many :orders

end
