class RenameOenologistIdAgain < ActiveRecord::Migration[7.0]
  def change
    rename_column :wine_oenologists, :oneologist_id, :oenologist_id
  end
end
