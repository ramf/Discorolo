class AddFieldsIntoRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :records, :datarecord, :date
    add_column :records, :dataprotocol, :date
  end
end
