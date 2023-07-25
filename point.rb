class Point
    def initialize(x,y)
        @x, @y = x, y
    end

    def to _s
        "(#@x, #@y)"
      
    end
end

p = new Point(1,2)
puts p

