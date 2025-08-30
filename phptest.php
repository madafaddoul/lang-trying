<?php
// Simple stats: sum, average, min, max, sorted
$nums = [3, 7, 1, 9, 4];

echo "Numbers: [" . implode(", ", $nums) . "]\n";

$sum = array_sum($nums);
$min = min($nums);
$max = max($nums);
$avg = $sum / count($nums);

$sorted = $nums;
sort($sorted, SORT_NUMERIC);

echo "Sum = $sum\n";
printf("Average = %.2f\n", $avg);
echo "Min = $min\n";
echo "Max = $max\n";
echo "Sorted = [" . implode(", ", $sorted) . "]\n";
