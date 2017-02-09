class AddQuantityToLineItems < ActiveRecord::Migration[5.0]
  def change
    add_column :schedule_line_items, :quantity, :integer, default: 0
  end
end
