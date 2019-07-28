unit role Granite::Area;

#| Briefly describe the area in a form that can be understood by the player.
#| The string should begin with a lowercase article.
method short(::?CLASS:D: --> Str:D) {…}

#| Describe the area in detail in a form that can be understood by the player.
#| The string should be one or more full sentences with proper capitalization
#| and punctuation.
method long(::?CLASS:D: --> Str:D) {…}

#| Whether this area features a composter.
#|
#| The default implementation returns False, indicating that there is no
#| composter.
method features-composter(::?CLASS:D: --> Bool:D)
{
    False;
}

#| List the items that are for sale in this area. The list items must be pairs
#| that map Str item names to Rat item cost.
#|
#| The default implementation returns the empty list, which means no items are
#| for sale.
method items-for-sale(::?CLASS:D: --> List:D)
{
    ();
}
