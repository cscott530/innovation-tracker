class CreateOrganizationInnovations < ActiveRecord::Migration
  def change
    create_table :organization_innovations do |t|
	  t.integer :organization_id
	  t.integer :innovation_id
      t.timestamps
    end
  end
end
