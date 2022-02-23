class CreateProgrammingLanguageTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :programming_language_types do |t|
      t.string :name
      t.string :description
      t.string :notes

      t.timestamps
    end
  end
end
