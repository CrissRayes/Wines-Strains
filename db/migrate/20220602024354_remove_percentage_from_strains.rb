class RemovePercentageFromStrains < ActiveRecord::Migration[7.0]
  def change
    remove_column :strains, :percentage, :decimal
  end
end
