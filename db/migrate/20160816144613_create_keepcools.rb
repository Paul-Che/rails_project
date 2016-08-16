class CreateKeepcools < ActiveRecord::Migration
  def change
    create_table :keepcools do |t|

      t.timestamps null: false
    end
  end
end
