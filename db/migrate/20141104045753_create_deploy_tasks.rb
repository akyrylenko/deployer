class CreateDeployTasks < ActiveRecord::Migration
  def change
    create_table :deploy_tasks do |t|
      t.integer :user_id
      t.integer_id :issue
      t.integer :stage_id

      t.timestamps
    end
  end
end
