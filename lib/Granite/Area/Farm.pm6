unit class Granite::Area::Farm;

use Granite::Area;

also does Granite::Area;

method short(::?CLASS:D: --> Str:D)
{
    ｢a farm｣;
}

method long(::?CLASS:D: --> Str:D)
{
    ｢In this old farm you see a pretty wheat field and a stable.｣;
}

method features-composter(::?CLASS:D: --> Bool:D)
{
    True;
}
