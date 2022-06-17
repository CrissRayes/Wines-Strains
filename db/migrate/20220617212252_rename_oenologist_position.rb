class RenameOenologistPosition < ActiveRecord::Migration[7.0]
  def change
    rename_table :oenologist_position, :oenologist_positions
  end
end
