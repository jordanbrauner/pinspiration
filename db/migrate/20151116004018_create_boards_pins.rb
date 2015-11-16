class CreateBoardsPins < ActiveRecord::Migration
  def change
    create_table :boards_pins, id: false do |t|
      t.belongs_to :board, index: true
      t.belongs_to :pin, index: true
      t.timestamps null: false
    end
  end
end
