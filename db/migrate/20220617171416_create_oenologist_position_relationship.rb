class CreateOenologistPositionRelationship < ActiveRecord::Migration[7.0]
  def change
    create_table :oenologist_positions do |t|
      t.belongs_to :oenologist, index: true
      t.belongs_to :position, index: true

      t.timestamps
    end
  end
end
