#!/bin/bash
figlet Pulshens Benchmark
echo CPU - CPU benchmark
echo Speedtest - Speedtest benchmark
echo HDD - Read/Write test
echo -n "What do u want to test, write numbers (1CPU/2Speedtest/3HDD)"
read item
case "$item" in
    1) echo "Writed «1/cpu», launching cpu benchmark"
      sh launch_cpu_benchmark.sh
        ;;
    2) echo "Writed «2/speedtest» launching speedtest benchmark"
     python launch_speedtest_benchmark.py
	    ;;
    3) echo "Writed «4/HDD» launching R/W benchmark"
     sync; dd if=/dev/zero of=tempfile bs=1M count=1024; sync && rm tempfile
        ;;
    *) echo "Nothing entered. Waiting for input"
        ;;
esac