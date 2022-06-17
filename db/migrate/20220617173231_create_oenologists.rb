class CreateOenologists < ActiveRecord::Migration[7.0]
  def change
    create_table :oenologists do |t|
      t.string :name
      t.string :age
      t.string :nacionality
      t.string :company

      t.timestamps
    end
  end
end
