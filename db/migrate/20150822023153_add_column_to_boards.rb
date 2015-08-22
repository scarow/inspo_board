class AddColumnToBoards < ActiveRecord::Migration
  def up
    change_table(:boards) do |t|
      t.integer :user_id, null: false, default: 0
    end
  end
end