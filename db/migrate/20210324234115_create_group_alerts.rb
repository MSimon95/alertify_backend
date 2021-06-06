class CreateGroupAlerts < ActiveRecord::Migration[6.1]
  def change
    create_table :group_alerts do |t|
      t.belongs_to :group, foreign_key: true
      t.belongs_to :alert, foreign_key: true
      t.timestamps
    end
  end
end
