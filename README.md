# CSE220_Proj2

cd build/release/run

git clone https://github.com/TheAlgorithms/C-Plus-Plus

mv -i ./C-Plus-Plus/Bubble\ Sort.cpp Bubble.cpp

riscv64-linux-gnu-g++ -O3 -static Bubble.cpp -o Bubble.rv

./callESESC.sh

./scripts/report.pl -last
