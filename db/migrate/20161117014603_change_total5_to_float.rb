class ChangeTotal5ToFloat < ActiveRecord::Migration
  def change
    change_column :tests, :l5total, :float
  end
end
