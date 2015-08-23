class AddImagesToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :images, :text
  end
end
