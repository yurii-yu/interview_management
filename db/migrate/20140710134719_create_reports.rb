class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :name
      t.string :position
      t.date :interview_date
      t.text :detail
      t.text :comments
      t.string :evaluation
      t.string :conclusion
      t.string :resume

      t.timestamps
    end
  end
end
