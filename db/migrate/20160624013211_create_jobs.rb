class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :description
      t.string :company_belongs_to

      t.timestamps null: false
    end
  end
end
