class CreateMedicationRoutes < ActiveRecord::Migration
  def change
    create_table :medication_routes do |t|
      t.string :full_name
      t.string :description
      t.string :short_name

      t.timestamps
    end
  end
end
