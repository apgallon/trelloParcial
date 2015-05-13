class Task < ActiveRecord::Base
	belongs_to :user, class_name: "User", foreign_key: "user_id"
	belongs_to :responsible, class_name: "User", foreign_key: "responsible_id"
  	

	validates :duration, numericality: { only_integer: true }
	validates_presence_of :title
	#Fechas
  	def self.by_person(user_id)
    	where("user_id = :id OR id = :id", id: responsible_id)
  	end
end
