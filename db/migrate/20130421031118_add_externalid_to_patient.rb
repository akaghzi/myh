class AddExternalidToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :externalid, :string
  end
end
