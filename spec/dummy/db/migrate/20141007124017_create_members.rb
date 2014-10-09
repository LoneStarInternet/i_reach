class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first
      t.string :last
      t.string :email
      t.string :nickname

      t.timestamps
    end
  end
end
