class RenameReadytimeToReadyTime < ActiveRecord::Migration[5.0]
  def change
    rename_column :dishes, :readytime, :ready_time
  end
end
