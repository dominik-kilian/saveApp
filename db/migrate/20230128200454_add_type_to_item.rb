class AddTypeToItem < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :type_of, :integer, null:false, default: Item.type_ofs[:other]
  end
end
