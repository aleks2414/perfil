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


validates_presence_of :l11, :l12, :l13, :l14, :if => lambda { |o| o.current_step == "pensamiento" }
validates_presence_of :l21, :l22, :l23, :l24, :l25, :l26, :if => lambda { |o| o.current_step == "liderazgo" }
validates_presence_of :l31, :l32, :l33, :l34, :if => lambda { |o| o.current_step == "flexibilidad" }
validates_presence_of :l41, :l42, :l43, :l44, :if => lambda { |o| o.current_step == "tolerancia" }
validates_presence_of :l51, :l52, :l53, :l54, :l55, :if => lambda { |o| o.current_step == "trabajo" }
validates_presence_of :l61, :l62, :l63, :l64, :if => lambda { |o| o.current_step == "aprendizaje" }
validates_presence_of :l71, :l72, :l73, :l74, :if => lambda { |o| o.current_step == "comunicacion" }

  attr_writer :current_step

  def current_step
    @current_step || steps.first
  end

  def steps
    %w[pensamiento liderazgo flexibilidad tolerancia trabajo aprendizaje comunicacion]
  end

  def next_step
    self.current_step = steps[steps.index(current_step)+1]
  end

  def previous_step
    self.current_step = steps[steps.index(current_step)-1]
  end

  def first_step?
    current_step == steps.first
  end

  def last_step?
    current_step == steps.last
  end

  def all_valid?
    steps.all? do |step|
      self.current_step = step
      valid?
    end
  end

end
