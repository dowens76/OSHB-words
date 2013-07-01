perl -nwE 'print; for my $s (/([^,])\n/g) { say "Lines parsed: ", $s }' parsings.csv # Does not work
