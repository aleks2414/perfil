class Test < ActiveRecord::Base

  before_save do
  self.l1total = (self.l11+self.l12+self.l13+self.l14)/4

  self.l2total = (self.l21+self.l22+self.l23+self.l24+self.l25+self.l26)/6

  self.l3total = (self.l31+self.l32+self.l33+self.l34)/4

  self.l4total = (self.l41+self.l42+self.l43+self.l44)/4

  self.l5total = (self.l51+self.l52+self.l53+self.l54+self.l55)/5

  self.l6total = (self.l61+self.l62+self.l63+self.l64)/4

  self.l7total = (self.l71+self.l72+self.l73+self.l74)/4

  self.l8total = (self.l81+self.l82+self.l83)/3
  end

end
