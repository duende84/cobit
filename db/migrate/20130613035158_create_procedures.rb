class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.string :code
      t.string :name
      t.text :description
      t.integer :domain_id

      t.timestamps
    end
  end
end
