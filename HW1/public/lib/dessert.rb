class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def name
    @name
  end
  def name=(other)
    @name=other
  end
  def calories
    @calories
  end
  def calories=(other)
    @calories=other
  end
  def healthy?
    @calories < 200
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor=flavor
    super(@flavor + " jelly bean", 5)
  end
  def flavor
    @flavor
  end
  def flavor=(other)
    @flavor=other
    @name=@flavor + " jelly bean"
  end
  def delicious?
    @flavor!="licorice"
  end
end
