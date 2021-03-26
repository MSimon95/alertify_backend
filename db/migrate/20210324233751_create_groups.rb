class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :description
      t.belongs_to :user, foreign_key: true
            
      t.timestamps
    end
  end
end
