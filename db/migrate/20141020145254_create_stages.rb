class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.string :name
      t.string :address
      t.string :database_url

      t.timestamps
    end
  end
end
