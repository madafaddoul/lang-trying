#!/usr/bin/env perl
use strict;
use warnings;

sub compute_stats {
    my ($nums) = @_;            # Expect an array reference
    die "compute_stats expects an arrayref\n" unless ref($nums) eq 'ARRAY';

    my ($sum, $min, $maximum) = (0, $nums->[0], $nums->[0]);
    for my $n (@$nums) {
        $sum += $n;
        $min = $n if $n < $min;
        $maximum = $n if $n > $maximum;
    }
    my $avg = $sum / @$nums;

    my @sorted = sort { $a <=> $b } @$nums;

    return {
        sum    => $sum,
        avg    => $avg,
        min    => $min,
        max    => $maximum,
        sorted => \@sorted,
    };
}

sub main {
    my @nums  = (5,6,8);
    my $stats = compute_stats(\@nums);

    print "Numbers: [", join(", ", @nums), "]\n";
    print "Sum = $stats->{sum}\n";
    printf "Average = %.2f\n", $stats->{avg};
    print "Min = $stats->{min}\n";
    print "Max = $stats->{max}\n";
    print "Sorted = [", join(", ", @{ $stats->{sorted} }), "]\n";
}

main();
