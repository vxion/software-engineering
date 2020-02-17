class Dessert
  # add code for setters and getters
   attr_accessor :name, :calories
  
  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end
  
  def healthy?
    # your code here
    if @calories < 200
      return true
    end
  end
  
  def delicious?
    # your code here
    return true
  end
end

class JellyBean < Dessert
  # add code for setters and getters
  attr_accessor :flavor
  
  def initialize(flavor)
    # your code here
    super(flavor + " " + "jelly bean", 5)
    @flavor = flavor
  end
end
