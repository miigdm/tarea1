class CreateEpisodes < ActiveRecord::Migration[6.1]
  def change
    create_table :episodes do |t|
      t.integer :api_id
      t.string :title
      t.integer :season
      t.integer :episode
      t.string :air_date
      t.text :characters, array: true, default: []
      t.string :series

      t.timestamps
    end
  end
end
