class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :number

      t.timestamps
    end
  end
end
