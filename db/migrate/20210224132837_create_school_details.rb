class CreateSchoolDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :school_details do |t|
      t.bigint :emis
      t.bigint :center_no
      t.string :name

      t.timestamps
    end
  end
end
