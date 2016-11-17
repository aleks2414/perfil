class ChangeTotal4ToFloat < ActiveRecord::Migration
  def change
    change_column :tests, :l4total, :float
  end
end
