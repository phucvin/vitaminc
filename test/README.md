cd ..

sudo bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"

or 

wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh 18

sudo apt install clang-format

scripts/install-fmt.sh

scripts/install-cxxopts.sh

scripts/install-qbe.sh

sudo apt install flex

make

./vitaminc test/codegen/array.c

./vitaminc --target=llvm test/codegen/array.c

pip install --user turnt

make test
