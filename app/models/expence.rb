class Expence < ActiveRecord::Base
 attr_accessible :name, :description, :status, :value
	belongs_to :user

	validates :user_id, presence: true


	  default_scope order: 'expences.created_at DESC'
end
