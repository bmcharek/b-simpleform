class AddRealColumnsToItems < ActiveRecord::Migration
  def self.up
    add_column :items, :published, :boolean
    add_column :items, :reference, :string
    add_column :items, :item_type_id, :integer
    add_column :items, :completed, :boolean
    add_column :items, :archived, :boolean
    add_column :items, :archived_at, :datetime
  end

  def self.down
    remove_column :items, :published, :boolean
    remove_column :items, :reference, :string
    remove_column :items, :item_type_id, :integer
    remove_column :items, :completed, :boolean
    remove_column :items, :archived, :boolean
    remove_column :items, :archived_at, :datetime
  end
  
end
