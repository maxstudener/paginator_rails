class CreateTestItems < ActiveRecord::Migration
  def change
    create_table :test_items do |t|
      t.string :data

      t.timestamps null: false
    end
  end
end
