class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.boolean :seller, :default => "false"

      t.timestamps
    end
  end
end
