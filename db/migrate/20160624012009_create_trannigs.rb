class CreateTrannigs < ActiveRecord::Migration
  def change
    create_table :trannigs do |t|
      t.string :name
      t.text :description
      t.belongs_to :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
