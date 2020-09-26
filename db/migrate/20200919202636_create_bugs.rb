class CreateBugs < ActiveRecord::Migration[6.0]
  def change
    create_table :bugs do |t|
      t.string :title
      t.text :description
      t.integer :severity
      t.boolean :state
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
