class CreateContactInfos < ActiveRecord::Migration
  def change
    create_table :contact_infos do |t|
      t.references :patient, index: true
      t.string :email
      t.string :alternate_phone
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :province
      t.string :country
      t.string :postal_code
      t.string :emergency_contact_name
      t.string :emergency_contact_relationship
      t.string :emergency_contact_phone

      t.timestamps
    end
  end
end
