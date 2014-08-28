class AddCategoryToInnovation < ActiveRecord::Migration
  def change
  	add_column :innovations, :category_id, :integer
  end
end
