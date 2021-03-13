class SorceryRememberMe < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :remember_me_token, :string, default: nil
    add_column :players, :remember_me_token_expires_at, :datetime, default: nil

    add_index :players, :remember_me_token
  end
end
