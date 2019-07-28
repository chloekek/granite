unit module Granite::Main;

use Granite::Area::Cave::Entrance;
use Granite::Area::Forest;
use Granite::Area::Shop;
use Granite::AreaID;
use Granite::Map;

sub MAIN()
    is export
{
    my $map := Granite::Map.new;

    my $shop-id := Granite::AreaID.new(-1, 0, 0);
    my $shop := Granite::Area::Shop.new;

    my $forest-id := Granite::AreaID.new(0, 0, 0);
    my $forest := Granite::Area::Forest.new;

    my $cave-entrance-id := Granite::AreaID.new(0, 1, 0);
    my $cave-entrance := Granite::Area::Cave::Entrance.new;

    $map.areas{$shop-id} = $shop;
    $map.areas{$forest-id} = $forest;
    $map.areas{$cave-entrance-id} = $cave-entrance;

    put '-' x 80; .put for $map.describe($shop-id);
    put '-' x 80; .put for $map.describe($forest-id);
    put '-' x 80; .put for $map.describe($cave-entrance-id);
}
