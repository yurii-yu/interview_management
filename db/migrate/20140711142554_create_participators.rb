class CreateParticipators < ActiveRecord::Migration
  def change
    create_table :participators do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
