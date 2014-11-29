#!/bin/sh -e

PREFIX="$1"

for bin in ocaml ocamlbuild ocamlbuild.byte ocamlc ocamlcp ocamldebug ocamldep ocamldoc ocamllex ocamlmklib ocamlmktop ocamlobjinfo ocamlopt ocamloptp ocamlprof ocamlrun ocamlyacc; do
  rm -f "${PREFIX}/arm-linux-androideabi/bin/${bin}"
done

rm -rf "${PREFIX}/arm-linux-androideabi/"
rm -rf "${PREFIX}/lib/findlib.conf.d/trik-oe.conf"
