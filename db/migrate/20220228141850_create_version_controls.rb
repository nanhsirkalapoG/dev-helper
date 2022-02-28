class CreateVersionControls < ActiveRecord::Migration[5.2]
  def change
    create_table :version_controls do |t|
      t.string :name
      t.string :vcs_type
      t.string :notes

      t.timestamps
    end
  end
end
