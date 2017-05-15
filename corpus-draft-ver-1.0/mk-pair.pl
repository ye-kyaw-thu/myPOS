#!/usr/bin/env perl

# last updated: 11 Oct 2016
# written by Ye, AI Lab.,
# Okayama Prefectural University, Japan
#
# Combining word and POS-tag files
# How to run:
# e.g. $ perl ../mk-pair.pl ./test1.word ./test1.pos > test1.pair

use strict;
use warnings;
use utf8;

binmode(STDIN, ":utf8");
binmode(STDOUT, ":utf8");
binmode(STDERR, ":utf8");

open (my $wordFILE,"<:encoding(utf8)", $ARGV[0]) or die "Couldn't open input file $ARGV[0]!, $!\n";
open (my $posFILE,"<:encoding(utf8)", $ARGV[1]) or die "Couldn't open input file $ARGV[1]!, $!\n";

while (!eof($wordFILE) and !eof($posFILE)) {
    my $wordLine = <$wordFILE>;
    my $posLine = <$posFILE>;

    my @word = split /\s+/, $wordLine;
    my @pos = split /\s+/, $posLine;

    my @pair=(); my $i = 0; my $oneWord="";
    foreach $oneWord (@word){
        no warnings 'uninitialized';
        push @pair, $oneWord."\/".$pos[$i];
        $i++; $oneWord="";
    }

    print "@pair\n";

}

close ($wordFILE);
close ($posFILE);
