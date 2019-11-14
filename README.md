# CSE220_Proj2

cd CuckooFilter
riscv64-linux-gnu-gcc -O3 -static cuckoo_filter.c nvrom_test.c ./mozilla-sha1/sha1/sha1.c -o cuckoo.rv
cd ..
./callESESC.sh
./scripts/report.pl -last
