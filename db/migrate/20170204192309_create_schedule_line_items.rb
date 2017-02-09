class CreateScheduleLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :schedule_line_items do |t|
      t.references :course, foreign_key: true
      t.belongs_to :detail_schedule, foreign_key: true

      t.timestamps
    end
  end
end
