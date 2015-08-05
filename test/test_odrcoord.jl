coord = Coord(1.0,2.0,3.0,4.0,5.0,6.0)
@test coord.x == 1.0
@test coord.y == 2.0
@test coord.z == 3.0
@test coord.h == 4.0
@test coord.p == 5.0
@test coord.r == 6.0

coordA = coord
coordB = Coord(1.5, 2.5, 3.5, 4.5, 5.5, 6.5)
@test coord_get_dist(coordA,coord) == 0
@test coord_get_dist(coordB,coord) != 0
dist = coord_get_dist(coordB,coord)
println(dist)

@test coord_get_dist2d(coordA,coord) == 0
@test coord_get_dist2d(coordB,coord) != 0
dist = coord_get_dist2d(coordB,coord)
println(dist)

coord_equal(coordA,coordB)
@test coordA==coordB

coord_multiply(coordA,coordB)
@test coordA ==(coordA*coordB)

coord_plus(coordA,coordB)
@test coordA ==(coordA+coordB)

coord_subtract(coordA,coordB)
@test coordA ==(coordA-coordB)

coord_plusequal(coordA,coordB)
@test coordA ==(coordA+coordB)

coord_minusequal(coordA,coordB)
@test coordA ==(coordA-coordB)

intitialize_coord(coord)

print_coord(coord)

get_value_coord(coord)


