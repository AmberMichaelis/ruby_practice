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

def coerce(other)
    [self, other]
end

def [](index)
    case index
    when 0 -2
    when 1, -1
    when :x, "x"
    when :y, "y"
    else nil
    end
end

def each
    yield @x
    yield @y
end

p = Point.new(1,2)
q = Point.new(p.x*2, p.y*2)
puts q.to_s

p = Point.new(1,2)
puts p
