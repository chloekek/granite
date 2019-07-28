unit class Granite::Area::Shop;

use Granite::Area;

also does Granite::Area;

method short(::?CLASS:D: --> Str:D)
{
    ｢a shop｣;
}

method long(::?CLASS:D: --> Str:D)
{
    ｢In this shop you can purchase weapons, ammunition, and armor.｣;
}

method items-for-sale(::?CLASS:D: --> List:D)
{
    (
        ｢arrow｣   => 1,
        ｢leather｣ => 8,
    )
}
