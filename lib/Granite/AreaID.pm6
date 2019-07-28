unit class Granite::AreaID;

use Granite::Direction;

my constant AreaID = Granite::AreaID;
my constant Direction = Granite::Direction;

has Int $.x is required;
has Int $.y is required;
has Int $.z is required;

method new(Int:D $x, Int:D $y, Int:D $z --> ::?CLASS:D)
{
    self.bless(:$x, :$y, :$z);
}

method WHICH
{
    ValueObjAt.new(“Granite::AreaID|$!x|$!y|$!z”);
}

#| Return the identifiers of the neighbors of the area, regardless of whether
#| they exist in the map.
method neighborhood(::?CLASS:D: --> Hash:D[AreaID:D, Direction:D])
{
    %(
        Direction::East  => AreaID.new($!x + 1, $!y, $!z),
        Direction::West  => AreaID.new($!x - 1, $!y, $!z),
        Direction::North => AreaID.new($!x, $!y + 1, $!z),
        Direction::South => AreaID.new($!x, $!y - 1, $!z),
        Direction::Above => AreaID.new($!x, $!y, $!z + 1),
        Direction::Under => AreaID.new($!x, $!y, $!z - 1),
    );
}
