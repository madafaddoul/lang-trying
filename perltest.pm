#!/usr/bin/env perl
use strict;
use warnings;

my @nums = (5,6,7,8);
print "Numbers: [", join(", ", @nums), "]\n";

my ($sum, $min, $max) = (0, $nums[0], $nums[0]);
for my $n (@nums) {
    $sum += $n;
    $min = $n if $n < $min;
    $max = $n if $n > $max;
}
my $avg = $sum / @nums;

my @sorted = sort { $a <=> $b } @nums;

printf "Sum = %d\n", $sum;
printf "Average = %.2f\n", $avg;
print  "Min = $min\n";
print  "Max = $max\n";
print  "Sorted = [", join(", ", @sorted), "]\n";
