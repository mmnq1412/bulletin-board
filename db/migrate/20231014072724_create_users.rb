class CreateUsers < ActiveRecord::Migration[7.0]
    def change
      create_table :users do |t|
        t.string :code, null: false, presence: true
        t.string :first_name, null: false, presence: true
        t.string :last_name, null: false, presence: true
        t.string :final_education
        t.text :self_introduction
        t.timestamps
      end
      add_index :users, [:code], unique: true
    end
  end