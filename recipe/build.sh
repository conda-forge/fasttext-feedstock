# # We need to override the Makefile's hardcoded "c++".
# make -j"${CPU_COUNT}" CXX="${CXX}"
# mkdir -p "${PREFIX}/bin"
# mv fasttext "${PREFIX}/bin"

# python -m pip install --no-deps --no-build-isolation -vv .

set -ex

cmake -GNinja \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DBUILD_SHARED_LIBS=ON \
  $SRC_DIR
ninja install

python -m pip install --no-deps --no-build-isolation -vv .
