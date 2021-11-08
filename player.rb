class Player

  attr_accessor :name
  attr_reader :live
  def initialize(name)
    @name = name
    @live = 3

  end

  def reduce_hp
    @live -= 1
  end


  def current_live
    return "#{@live}/3"
  end

end



