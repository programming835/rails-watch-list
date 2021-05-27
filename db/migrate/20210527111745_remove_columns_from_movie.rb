class RemoveColumnsFromMovie < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :rating, :string
    remove_column :movies, :float, :string
  end
end
