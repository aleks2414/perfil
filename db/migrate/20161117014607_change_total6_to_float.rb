class ChangeTotal6ToFloat < ActiveRecord::Migration
  def change
    change_column :tests, :l6total, :float
  end
end
