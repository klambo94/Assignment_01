class CreateDetailSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :detail_schedules do |t|

      t.timestamps
    end
  end
end
