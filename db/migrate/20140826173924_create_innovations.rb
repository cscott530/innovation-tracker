class CreateInnovations < ActiveRecord::Migration
  def change
    create_table :innovations do |t|
      t.string :name
      t.string :caption
      t.integer :order
      t.string :description

      t.timestamps
    end
  end
end
