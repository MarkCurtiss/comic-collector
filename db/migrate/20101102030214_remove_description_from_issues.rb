class RemoveDescriptionFromIssues < ActiveRecord::Migration
  def self.up
    remove_column :issues, :description
  end

  def self.down
    add_column :issues, :description, :string
  end
end
