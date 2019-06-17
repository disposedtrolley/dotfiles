# Dev environment setup instructions for macOS
# http://dev.realworldocaml.org/install.html

brew install opam

opam init

eval `opam config env`

# Confirm it all works
printenv OCAML_TOPLEVEL_PATH

# Confirm compiler 4.06.0 or greater is installed
opam switch

# Install libraries used in the book
opam install core utop
#   NB: some of the following might fail
opam install async yojson core_extended core_bench cohttp async_graphics cryptokit menhir

# IDE
opam install merlin

# Indentation
opam install ocp-indent
