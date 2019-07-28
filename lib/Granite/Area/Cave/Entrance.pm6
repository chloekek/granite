unit class Granite::Area::Cave::Entrance;

use Granite::Area;

also does Granite::Area;

method short(::?CLASS:D: --> Str:D)
{
    ｢a cave entrance｣;
}

method long(::?CLASS:D: --> Str:D)
{
    ｢Inside this cold underground cave some difficult challenges await you.｣;
}
