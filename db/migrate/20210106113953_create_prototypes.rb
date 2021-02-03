class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string :title
      t.string :catch_copy
      t.string :concept
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
