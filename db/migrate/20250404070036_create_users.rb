class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string  :staff_id,        null: false
      t.string  :name,            null: false

      t.string  :password_digest, null: false



      t.integer :job_type,        null: false, default: 0  # enum用（例: doctor: 0）
      t.boolean :active,          null: false, default: true
      t.integer :role,            null: false, default: 0  # enum用（例: sub_user: 0）

      t.timestamps
    end

    add_index :users, :staff_id, unique: true
  end
end