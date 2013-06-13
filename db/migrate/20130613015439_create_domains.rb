class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :code
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
