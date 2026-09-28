#!/bin/bash

# Simple Interest Calculator
# Formula: SI = (P * R * T) / 100

read -p "Enter principal amount: " principal
read -p "Enter rate of interest (% per year): " rate
read -p "Enter time period (years): " time

simple_interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo ""
echo "Principal = $principal"
echo "Rate = $rate%"
echo "Time = $time years"
echo "Simple Interest = $simple_interest"
