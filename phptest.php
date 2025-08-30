<?php
declare(strict_types=1);

function computeStats(array $nums): array {
    $sum = array_sum($nums);
    $min = min($nums);
    $maximum = max($nums);
    $avg = $sum / count($nums);

    $sorted = $nums;
    sort($sorted, SORT_NUMERIC);

    return [
        'sum' => $sum,
        'avg' => $avg,
        'min' => $min,
        'max' => $maximum,
        'sorted' => $sorted
    ];
}

function main(): void {
    $nums = [10,12];
    $stats = computeStats($nums);

    echo "Numbers: [" . implode(", ", $nums) . "]\n";
    echo "Sum = {$stats['sum']}\n";
    printf("Average = %.2f\n", $stats['avg']);
    echo "Min = {$stats['min']}\n";
    echo "Max = {$stats['max']}\n";
    echo "Sorted = [" . implode(", ", $stats['sorted']) . "]\n";
}

main();
