class CreateJokes < ActiveRecord::Migration[5.2]
  def change
    create_table :jokes do |t|
      t.string :icon_url
      t.string :url
      t.string :value

      t.timestamps
    end
  end
end
