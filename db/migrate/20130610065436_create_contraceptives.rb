class CreateContraceptives < ActiveRecord::Migration
  def change
    create_table :contraceptives do |t|
      t.string :name

      t.timestamps
    end
  end
end
