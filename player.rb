class Player

  attr_accessor :name
  def initialize(name)
    @name = name
    @live = 3
    @correct_answer = 0
    @answer = 0

  end

  def reduce_hp
    @live -= 1
  end


  def current_live
    return "#{@live}/3"
  end

end



