class CreateExpences < ActiveRecord::Migration
  def change
    create_table :expences do |t|
      t.string :name
      t.text :description
      t.string :status
      t.date :data_in
      t.date :data_venc
      t.date :data_pg
      t.integer :value
      t.integer :user_id

      t.timestamps
    end
    add_index :expences, [:user_id, :created_at]
  end
end
