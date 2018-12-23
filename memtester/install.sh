#!/bin/sh
tar -xf memtester-4.3.0.tar.gz
cd memtester-4.3.0
make -j $NUM_CPU_CORES
echo $? > ~/install-exit-status

cd ~
echo "#!/bin/sh
cd memtester-4.3.0
./memtester \$@  2>&1 > \$LOG_FILE
echo \$? > ~/test-exit-status" > memtester
chmod +x memtester-4.3.0.tar.gz
