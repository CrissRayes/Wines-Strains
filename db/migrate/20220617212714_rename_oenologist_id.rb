class RenameOenologistId < ActiveRecord::Migration[7.0]
  def change
    rename_column :oenologist_positions, :oneologist_id, :oenologist_id
  end
end
