# We need to override the Makefile's hardcoded "c++"
# and CXXFLAGS due to unrecognized hard-coded march=native on aarch64/ppc64lef
make -j"${CPU_COUNT}" CXX="${CXX}" CXXFLAGS="${CXXFLAGS} -std=c++11 -pthread"
mkdir -p "${PREFIX}/bin"
mv fasttext "${PREFIX}/bin"

"${PYTHON}" -m pip install --no-deps --ignore-installed -v .
