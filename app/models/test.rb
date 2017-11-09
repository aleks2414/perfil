class Test < ActiveRecord::Base

  before_save do
  self.l1total = self.l11+self.l12+self.l13+self.l14
  self.l1total = self.l1total.round(2)


  self.l2total = self.l21+self.l22+self.l23+self.l24+self.l25+self.l26
  self.l2total = self.l2total.round(2)


  self.l3total = self.l31+self.l32+self.l33+self.l34
  self.l3total = self.l3total/136*100
  self.l3total = self.l3total.round(2)


  self.l4total = self.l41+self.l42+self.l43+self.l44
  self.l4total = self.l4total.round(2)


  self.l5total = self.l51+self.l52+self.l53+self.l54+self.l55
  self.l5total = self.l5total.round(2)


  self.l6total = self.l61+self.l62+self.l63+self.l64
  self.l6total = self.l6total.round(2)


  self.l7total = self.l71+self.l72+self.l73+self.l74
  self.l7total = self.l7total.round(2)
  end

end
