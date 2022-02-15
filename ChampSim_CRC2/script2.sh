#!/bin/bash
trace_input="trace_input.txt"
#	     ./bin/lru-config2-default -warmup_instructions 50000000 -simulation_instructions 100000000 -traces /datasets/cs240c-wi22-a00-public/data/Assignment2-gz/$line | tee results/baseline/result_baseline_$line.txt & 
#	     ./bin/lru-config2-hawkeye -warmup_instructions 50000000 -simulation_instructions 100000000 -traces /datasets/cs240c-wi22-a00-public/data/Assignment2-gz/$line | tee results/hawkeye/result_hawkeye_$line.txt &
	     #./bin/lru-config2-tag -warmup_instructions 50000000 -simulation_instructions 100000000 -traces /datasets/cs240c-wi22-a00-public/data/Assignment2-gz/$line | tee results/tag/result_tag_$line.txt &
#while read line;  do
#     ./bin/lru-config2-hawkeye-dse-2way -warmup_instructions 50000000 -simulation_instructions 100000000 -traces /datasets/cs240c-wi22-a00-public/data/Assignment2-gz/$line | tee results/hawkeye-dse-2way/result_hawkeye_$line.txt &
#     done < "$trace_input"
#wait
#echo "All Traces for LIME BINARY  COMPLETED"
#while read line;  do
#    ./bin/lru-config2-hawkeye-dse-4way -warmup_instructions 50000000 -simulation_instructions 100000000 -traces /datasets/cs240c-wi22-a00-public/data/Assignment2-gz/$line | tee results/hawkeye-dse-4way/result_hawkeye_$line.txt &
#    done < "$trace_input"
#wait
#echo "All Traces for LIME BINARY  COMPLETED"
#while read line;  do
#     ./bin/lru-config2-ship-dse-6rrpv -warmup_instructions 10000000 -simulation_instructions 100000000 -traces /datasets/cs240c-wi22-a00-public/data/Assignment2-gz/$line | tee results/ship-dse-6rrpv/result_ship_$line.txt &
#    done < "$trace_input"
#wait
#echo "All Traces for LIME BINARY  COMPLETED"
#while read line;  do
#     ./bin/lru-config2-hawkeye-dse-64optsize -warmup_instructions 50000000 -simulation_instructions 100000000 -traces /datasets/cs240c-wi22-a00-public/data/Assignment2-gz/$line | tee results/hawkeye-dse-64opt/result_hawkeye_$line.txt &
#    done < "$trace_input"
#wait
#echo "All Traces for LIME BINARY  COMPLETED"
#while read line;  do
#     ./bin/lru-config2-hawkeye-fo-9scht -warmup_instructions 50000000 -simulation_instructions 100000000 -traces /datasets/cs240c-wi22-a00-public/data/Assignment2-gz/$line | tee results/hawkeye-fo-9scht/result_ship_$line.txt &
#    done < "$trace_input"
#wait
#echo "All Traces for LIME BINARY  COMPLETED"
#while read line;  do
#     ./bin/lru-config2-hawkeye-fo-10scht -warmup_instructions 50000000 -simulation_instructions 100000000 -traces /datasets/cs240c-wi22-a00-public/data/Assignment2-gz/$line | tee results/hawkeye-fo-10scht/result_ship_$line.txt &
#     done < "$trace_input"
#wait
#echo "All Traces for LIME BINARY  COMPLETED"
while read line;  do
     ./bin/lru-config2-hawkeye-dse-1way -warmup_instructions 50000000 -simulation_instructions 100000000 -traces /datasets/cs240c-wi22-a00-public/data/Assignment2-gz/$line | tee results/hawkeye-dse-1way/result_$line.txt &
     done < "$trace_input"
wait
echo "All Traces for LIME BINARY  COMPLETED"
while read line;  do
     ./bin/lru-config2-hawkeye-dse-16way -warmup_instructions 50000000 -simulation_instructions 100000000 -traces /datasets/cs240c-wi22-a00-public/data/Assignment2-gz/$line | tee results/hawkeye-dse-16way/result_$line.txt &
     done < "$trace_input"
wait
echo "All Traces for LIME BINARY  COMPLETED"
while read line; do
     ./bin/lru-config2-hawkeye-fo-9scht -warmup_instructions 50000000 -simulation_instructions 100000000 -traces /datasets/cs240c-wi22-a00-public/data/Assignment2-gz/$line | tee results/hawkeye-fo-9scht/result_$line.txt &
done < "$trace_input"
wait
echo "ALl traces for LIME BINARY COMPLETED"
