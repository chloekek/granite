unit class Granite::Area::Forest;

use Granite::Area;

also does Granite::Area;

method short(::?CLASS:D: --> Str:D)
{
    ｢a forest｣;
}

method long(::?CLASS:D: --> Str:D)
{
    ｢In this forest you see a lot of pine trees.｣;
}
