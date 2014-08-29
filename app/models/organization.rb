class Organization < ActiveRecord::Base
	has_many :organization_innovations
	has_many :innovations, through: :organization_innovations
end
