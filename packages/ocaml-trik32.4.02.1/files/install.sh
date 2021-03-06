#!/bin/sh -e

PREFIX="$1"

for bin in ocaml ocamlbuild ocamlbuild.byte ocamlc ocamlcp ocamldebug ocamldep ocamldoc ocamllex ocamlmklib ocamlmktop ocamlobjinfo ocamlopt ocamloptp ocamlprof ocamlrun ocamlyacc; do
  path="${PREFIX}/arm-oe-linux-gnueabi/bin/${bin}"
  if [ -e "${path}" ] && [ "$(head -c 1 ${path})" = "/" ]; then
    echo -n '#!' | cat - "${path}" >"${path}.n"
    mv "${path}.n" "${path}"
    chmod +x "${path}"
  fi
done

for pkg in bigarray bytes compiler-libs dynlink findlib graphics num num-top ocamlbuild stdlib str threads unix; do
  cp -r "${PREFIX}/lib/${pkg}" "${PREFIX}/arm-oe-linux-gnueabi/lib/"
done

mkdir -p "${PREFIX}/lib/findlib.conf.d"
cp trik.conf "${PREFIX}/lib/findlib.conf.d"

