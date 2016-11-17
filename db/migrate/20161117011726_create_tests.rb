class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :nombre
      t.string :email
      t.integer :l11
      t.integer :l12
      t.integer :l13
      t.integer :l14
      t.integer :l1total
      t.integer :l21
      t.integer :l22
      t.integer :l23
      t.integer :l24
      t.integer :l25
      t.integer :l26
      t.integer :l2total
      t.integer :l31
      t.integer :l32
      t.integer :l33
      t.integer :l34
      t.integer :l3total
      t.integer :l41
      t.integer :l42
      t.integer :l43
      t.integer :l44
      t.integer :l4total
      t.integer :l51
      t.integer :l52
      t.integer :l53
      t.integer :l54
      t.integer :l55
      t.integer :l5total
      t.integer :l61
      t.integer :l62
      t.integer :l63
      t.integer :l64
      t.integer :l6total
      t.integer :l71
      t.integer :l72
      t.integer :l73
      t.integer :l74
      t.integer :l7total
      t.integer :l81
      t.integer :l82
      t.integer :l83
      t.integer :l8total

      t.timestamps null: false
    end
  end
end
