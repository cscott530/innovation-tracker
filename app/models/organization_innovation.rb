class OrganizationInnovation < ActiveRecord::Base
	belongs_to :innovation
	belongs_to :organization
end
