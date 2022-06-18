class CreateWineOenologistRelationship < ActiveRecord::Migration[7.0]
  def change
    create_table :wine_oenologists do |t|
      t.belongs_to :wine, index: true
      t.belongs_to :oneologist, index: true

      t.timestamps
    end
  end
end
