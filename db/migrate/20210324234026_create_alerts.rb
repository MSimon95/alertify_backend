class CreateAlerts < ActiveRecord::Migration[6.1]
  def change
    create_table :alerts do |t|
      t.string :event
      t.string :image
      t.string :info
      t.string :date
      t.string :time
      t.string :place  
      t.timestamps
    end
  end
end
