class AddPercentageToWineStrains < ActiveRecord::Migration[7.0]
  def change
    add_column :wine_strains, :percentage, :decimal
  end
end
