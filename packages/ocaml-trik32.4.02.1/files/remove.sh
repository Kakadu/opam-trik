#!/bin/sh -e

PREFIX="$1"

for bin in ocaml ocamlbuild ocamlbuild.byte ocamlc ocamlcp ocamldebug ocamldep ocamldoc ocamllex ocamlmklib ocamlmktop ocamlobjinfo ocamlopt ocamloptp ocamlprof ocamlrun ocamlyacc; do
  rm -f "${PREFIX}/arm-oe-linux-gnueabi/bin/${bin}"
done

rm -rf "${PREFIX}/arm-oe-linux-gnueabi/"
rm -rf "${PREFIX}/lib/findlib.conf.d/oe-trik.conf"

