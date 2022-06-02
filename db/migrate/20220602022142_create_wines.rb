class CreateWines < ActiveRecord::Migration[7.0]
  def change
    create_table :wines do |t|
      t.string :brand
      t.string :category
      t.string :color

      t.timestamps
    end
  end
end
