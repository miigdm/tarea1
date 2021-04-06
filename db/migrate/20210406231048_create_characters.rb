class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.integer :api_id
      t.string :name
      t.text :occupation, array: true, default: []
      t.string :img
      t.string :status
      t.string :nickname
      t.text :appearance, array: true, default: []
      t.text :better_call_saul_appearance, array: true, default: []
      t.string :portrayed
      t.text :category, array: true, default: []

      t.timestamps
    end
  end
end
