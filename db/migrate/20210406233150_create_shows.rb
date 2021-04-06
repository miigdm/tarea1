class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.integer :api_id
      t.string :title
      t.text :seasons, array: true, default: []
      t.text :episodes, array: true, default: []

      t.timestamps
    end
  end
end
