class RemoveUserIdFromPins < ActiveRecord::Migration
  def change
    remove_column :pins, :user_id, :integer
  end
end
