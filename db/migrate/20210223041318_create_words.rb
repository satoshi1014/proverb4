class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string  :proverb
      t.string  :owner
      t.integer :user_id
      t.text  :story
      t.timestamps
    end
  end
end
