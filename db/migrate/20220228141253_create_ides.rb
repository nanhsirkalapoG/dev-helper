class CreateIdes < ActiveRecord::Migration[5.2]
  def change
    create_table :ides do |t|
      t.string :name
      t.string :notes
      t.boolean :open_source

      t.timestamps
    end
  end
end
