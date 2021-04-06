class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.integer :api_id
      t.string :quote
      t.string :author
      t.string :series

      t.timestamps
    end
  end
end
