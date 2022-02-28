class CreateDatabaseTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :database_types do |t|
      t.string :name
      t.string :notes

      t.timestamps
    end
  end
end
