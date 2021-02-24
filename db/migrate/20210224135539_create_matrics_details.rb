class CreateMatricsDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :matrics_details do |t|
      t.bigint :year
      t.bigint :wrote
      t.bigint :passed
      t.references :school_detail, foreign_key: true

      t.timestamps
    end
  end
end
