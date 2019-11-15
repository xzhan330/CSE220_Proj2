# CSE220_Proj2

cd build/release/run

git clone https://github.com/ZoranPandovski/al-go-rithms

mv -i ./al-go-rithms/backtracking/knightsTour/C++/knightsTour.cpp knightsTour.cpp

riscv64-linux-gnu-g++ -O3 -static knightsTour.cpp -o knightsTour.rv

./callESESC.sh

./scripts/report.pl -last
