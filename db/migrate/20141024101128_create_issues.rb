class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :number
      t.integer :project_id

      t.timestamps
    end
  end
end
