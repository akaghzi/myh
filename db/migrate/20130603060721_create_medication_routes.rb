class CreateMedicationRoutes < ActiveRecord::Migration
  def change
    create_table :medication_routes do |t|
      t.string :name

      t.timestamps
    end
  end
end
