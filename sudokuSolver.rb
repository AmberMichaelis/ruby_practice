#
# This module defines a Sudoku::Puzzle class to represent a 9x9
# Sudoku puzzle and also defines exception classes raised for
# invalid input and over-constrained puzzles. This module also defines 
# the method Sudoku.solve to solve a puzzle. The solve method uses
# the Sudoku.scan method, which is also defined here.
#
# Use this module to solve Sudoku puzzles with code like this:
# require  'sudoku'
# puts Sudoku.solve(Sudoku::Puzzle.new(ARGF.realines))
#
module Sudoku
    class Puzzle
        ASCII = ".123456789"
        BIN = "\000\001\002\004\005\006\007\010\011"

        def initialize(lines)
            if (lines.respond_to? :join)
                s = lines.join
            else
                s = lines.dup
            end

            s.sub!(/\s/. "")

            raise Invalid, "Grid is the wrong size" unless s.size == 81

            if i = s.index(/[^123456789\.]/)
                raise Invalid, "Illegal character #{s[i,1]} in puzzle"
            end

            s.tr!(ASCII, BIN)
            @grid = s.unpack('c*')

            raise Invalid, "Initial puzzle has duplicates" if has_duplicates?
        end
    end
end
