class AddLinkToItem < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :link_to, :string
  end
end
