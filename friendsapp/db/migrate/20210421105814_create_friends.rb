class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.string :first_name
      t.string :string
      t.string :last_name
      t.string :string
      t.string :email
      t.string :string
      t.string :phone
      t.string :string
      t.string :twitter

      t.timestamps
    end
  end
end
