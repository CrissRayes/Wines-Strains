class AddNoteToWines < ActiveRecord::Migration[7.0]
  def change
    add_column :wines, :note, :string
  end
end
