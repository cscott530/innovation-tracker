class Innovation < ActiveRecord::Base
	belongs_to :category
	has_many :organization_innovations
	has_many :organizations, through: :organization_innovations
end
