class Point
    def initialize(x,y)
        @x, @y = x, y
    end

    def x
        @x
    end

    def y
        @y
    end

    def to_s
        "(#@x, #@y)"
      
    end

end

p = Point.new(1,2)
q = Point.new(p.x*2, p.y*2)
puts q.to_s

