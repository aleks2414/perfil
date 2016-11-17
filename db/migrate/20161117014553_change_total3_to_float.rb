class ChangeTotal3ToFloat < ActiveRecord::Migration
  def change
    change_column :tests, :l3total, :float
  end
end
