class CreateProgrammingLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :programming_languages do |t|
      t.string :name
      t.integer :year_of_creation

      t.timestamps
    end
  end
end
