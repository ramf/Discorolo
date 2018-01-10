class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.string :description
      t.text :origin
      t.string :topic
      t.string :part

      t.timestamps
    end
  end
end
