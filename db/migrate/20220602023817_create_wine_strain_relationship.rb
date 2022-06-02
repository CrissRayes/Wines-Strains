class CreateWineStrainRelationship < ActiveRecord::Migration[7.0]
  def change
    create_table :wine_strains do |t|
      t.belongs_to :wine, index: true
      t.belongs_to :strain, index: true
      t.timestamps
    end
  end
end
