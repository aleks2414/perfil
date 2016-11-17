class ChangeTotal2ToFloat < ActiveRecord::Migration
  def change
    change_column :tests, :l2total, :float
  end
end
