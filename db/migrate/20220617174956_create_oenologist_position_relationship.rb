class CreateOenologistPositionRelationship < ActiveRecord::Migration[7.0]
  def change
    create_table :oenologist_position do |t|
      t.belongs_to :oneologist, index: true
      t.belongs_to :position, index: true

      t.timestamps
    end
  end
end
