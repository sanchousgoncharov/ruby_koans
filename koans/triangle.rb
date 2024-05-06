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
    raise TriangleError if [a,b,c].min <= 0
    x,y,z = [a,b,c].sort
    raise TriangleError if x + y <= z

    equal_sides = 0
    equal_sides +=1 if a == b
    equal_sides +=1 if a == c
    equal_sides +=1 if b == c

    # Note that equal_sides will never be 2.  If it hits 2 
    # of the conditions, it will have to hit all 3 by the law
    # of associativity
    return [:scalene, :isosceles, nil, :equilateral][equal_sides] 
end 

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
