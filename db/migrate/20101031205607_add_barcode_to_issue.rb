class AddBarcodeToIssue < ActiveRecord::Migration
  def self.up
    add_column :issues, :barcode, :integer
  end

  def self.down
    remove_column :issues, :barcode
  end
end
