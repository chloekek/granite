{stdenv, makeWrapper, perl, rakudo}:
stdenv.mkDerivation {
    name = "granite";
    buildInputs = [makeWrapper rakudo];
    phases = ["installPhase"];
    installPhase = ''
        mkdir --parents $out/bin $out/share

        cp -R ${./META6.json} $out/share/META6.json
        cp -R ${./bin} $out/share/bin
        cp -R ${./lib} $out/share/lib
        cp -R ${./t} $out/share/t

        makeWrapper \
            ${rakudo}/bin/perl6 \
            $out/bin/granite \
            --prefix PERL6LIB , $out/share \
            --add-flags $out/share/bin/granite

        makeWrapper \
            ${perl}/bin/prove \
            $out/bin/granite.test \
            --prefix PERL6LIB , $out/share \
            --add-flags --exec \
            --add-flags ${rakudo}/bin/perl6 \
            --add-flags --recurse \
            --add-flags $out/share/t
    '';
}
