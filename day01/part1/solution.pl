#!/usr/bin/perl -l -n

BEGIN {
    our $dial = 50;
    our $count = 0;
}

if (/^([A-Za-z])(\d+)$/) {
        my ($letter, $number) = ($1, $2);

        if ($letter eq 'L') {
            $dial = ($dial - $number) % 100;
        }
        elsif ($letter eq 'R') {
            $dial = ($dial + $number) % 100;
        }
        else {
            print("wtf");
        }
    }

if ($dial == 0) {
    $count++;
}

END {
    print($count);
}
