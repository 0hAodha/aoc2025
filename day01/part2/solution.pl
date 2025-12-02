#!/usr/bin/perl -l -n

BEGIN {
    our $dial = 50;
    our $count = 0;
}

if (/^([A-Za-z])(\d+)$/) {
        my ($letter, $number) = ($1, $2);

        if ($letter eq 'L') {
            while ($number > 0) {
                $dial = ($dial - 1) % 100;
                $number--;

                if ($dial == 0) {
                    $count++;
                }
            }
        }
        elsif ($letter eq 'R') {
            while ($number > 0) {
                $dial = ($dial + 1) % 100;
                $number--;

                if ($dial == 0) {
                    $count++;
                }
            }
        }
        else {
            print("wtf");
        }
    }


END {
    print($count);
}
