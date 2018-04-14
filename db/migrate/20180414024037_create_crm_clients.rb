class CreateCrmClients < ActiveRecord::Migration[5.1]
  def change
    create_table :crm_clients do |t|
      t.belongs_to :client_company, foreign_key: true
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number
      t.integer :mobile_number
      t.string :branch_location
      t.string :contact_level
      t.string :industry

      t.timestamps
    end
  end
end
