make -j"${CPU_COUNT}"
mkdir -p "${PREFIX}/bin"
mv fasttext "${PREFIX}/bin"
