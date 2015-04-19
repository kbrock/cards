class Box
  attr_accessor :x, :y, :height, :width
  def initialize(opts = {})
    opts.each do |n, v|
      send("#{n}=", v)
    end
  end

  def [](name)
    send(name)
  end
end
