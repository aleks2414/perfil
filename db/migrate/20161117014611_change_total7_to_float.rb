class ChangeTotal7ToFloat < ActiveRecord::Migration
  def change
    change_column :tests, :l7total, :float
  end
end
