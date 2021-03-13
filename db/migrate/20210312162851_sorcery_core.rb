class SorceryCore < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string  :email,            null: false
      t.string  :crypted_password
      t.string  :salt
      t.string  :full_name
      t.date    :dob
      t.integer :rank

      t.timestamps                null: false
    end

    add_index :players, :email, unique: true
  end
end
