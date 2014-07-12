class AddEnabledToParticipator < ActiveRecord::Migration
  def change
    add_column :participators, :enabled, :boolean
  end
end
