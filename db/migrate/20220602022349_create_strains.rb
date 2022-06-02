class CreateStrains < ActiveRecord::Migration[7.0]
  def change
    create_table :strains do |t|
      t.string :name
      t.decimal :percentage

      t.timestamps
    end
  end
end
