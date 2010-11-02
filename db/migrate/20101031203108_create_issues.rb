class CreateIssues < ActiveRecord::Migration
  def self.up
    create_table :issues do |t|
      t.string :description
      t.integer :issue_num
      t.integer :volume_num
      t.integer :series_id

      t.timestamps
    end
  end

  def self.down
    drop_table :issues
  end
end
