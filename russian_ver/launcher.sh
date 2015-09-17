#!/bin/bash
figlet Pulshens Benchmark
echo Разшифровка обозначений
echo CPU - Тест процессора
echo Speedtest - Тест скорости интернета
echo HDD - Тест чтения/записи диска
echo -n "Что вы хотите тестировать? Вводите цифры (1CPU/2Speedtest/3HDD)"
read item
case "$item" in
    1) echo "Ввели «1/cpu», запускаем бенчмарк процессора"
      sh launch_cpu_benchmark.sh
        ;;
    2) echo "Ввели «2/speedtest» запускаем тест скорости интернета"
     python launch_speedtest_benchmark.py
	    ;;
    3) echo "Ввели «3/HDD» запускаем тест скорости чтения/записи на диск"
     sync; dd if=/dev/zero of=tempfile bs=1M count=1024; sync && rm tempfile
        ;;
    *) echo "Ничего не ввели. Ожидание ввода"
        ;;
esac