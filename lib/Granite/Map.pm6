unit class Granite::Map;

use Granite::Area;
use Granite::AreaID;

my constant Area = Granite::Area;
my constant AreaID = Granite::AreaID;

has Area:D %.areas{AreaID:D};

method describe(::?CLASS:D: AreaID:D $area-id --> Seq:D)
{
    lazy gather {
        my $area := %!areas{$area-id};
        take qq｢You are at {$area.short}.｣;
        take $area.long;

        take qq｢{.key} of you is {.value.short}.｣ for
            $area-id.neighborhood.pairs
                .map({.key => %!areas{.value}})
                .grep(*.value.defined);
    }
}
