class AddTimestampsToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :created_at, :datetime, null: false, default: -> { 'CURRENT_TIMESTAMP' }
    add_column :tasks, :updated_at, :datetime, null: false, default: -> { 'CURRENT_TIMESTAMP' }
  end
end
