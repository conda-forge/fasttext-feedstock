# We need to override the Makefile's hardcoded "c++".
make -j"${CPU_COUNT}" CXX="${CXX}"
mkdir -p "${PREFIX}/bin"
mv fasttext "${PREFIX}/bin"
