#!/usr/bin/env perl
use strict;
use warnings;

sub compute_stats {
    my ($nums) = @_;            # Expect an array reference
    die "compute_stats expects an arrayref\n" unless ref($nums) eq 'ARRAY';

    my ($sum, $min, $max) = (0, $nums->[0], $nums->[0]);
    for my $n (@$nums) {
        $sum += $n;
        $min = $n if $n < $min;
        $max = $n if $n > $max;
    }
    my $avg = $sum / @$nums;

    my @sorted = sort { $a <=> $b } @$nums;

    return {
        sum    => $sum,
        avg    => $avg,
        min    => $min,
        max    => $max,
        sorted => \@sorted,
    };
}

sub main {
    my @nums  = (3, 7, 1, 9, 4);
    my $stats = compute_stats(\@nums);

    print "Numbers: [", join(", ", @nums), "]\n";
    print "Sum = $stats->{sum}\n";
    printf "Average = %.2f\n", $stats->{avg};
    print "Min = $stats->{min}\n";
    print "Max = $stats->{max}\n";
    print "Sorted = [", join(", ", @{ $stats->{sorted} }), "]\n";
}

main();
