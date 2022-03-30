class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :firstname
      t.string :surname
      t.string :gmail
      t.integer :mobile_number
      t.string :password
      t.date :date_of_birth
      t.string :gender
      t.boolean :terms_and_conditions

      t.timestamps
    end
  end
end
