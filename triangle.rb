# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  if a < 1 || b < 1 || c < 1
      raise TriangleError, "Sides must have postive non-zero length"
  end
  sorted = [a,b,c].sort
  #print "Sorted: " + sorted.to_s
  if sorted[2] >= (sorted[0]+sorted[1])
    raise TriangleError, "The longest side cannot be longer than the other two sides combined"
  end
  if a == b
  	if b == c
  		return :equilateral
  	end
  	return :isosceles
  end
  if (a == c || b == c)
  	return :isosceles
  end
  return :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
