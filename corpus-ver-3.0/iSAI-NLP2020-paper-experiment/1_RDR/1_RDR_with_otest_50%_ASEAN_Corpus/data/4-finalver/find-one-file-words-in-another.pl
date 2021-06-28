#!/bin/perl

# Find one file words in another file (of field 1)
# Last updated date: 2 Dec 2020
# Written by Ye Kyaw Thu,
# Visiting Professor,
# Language and Semantic Technology Research Team (LST), NECTEC, Thailand
#
# How to use:
# $ perl find-one-file-words-in-another.pl <wordlist-file> <search-file>
# e.g. perl ./find-one-file-words-in-another.pl ./oxford-3000-word-list.txt ./mcfdict.f24.txt

# Testing (1)
# perl ./find-one-file-words-in-another.pl ./oxford-3000-word-list.txt ./mcfdict.f24.txt | wc
#   2946    7934  178158

# Testing (2)
# $ perl ./find-one-file-words-in-another.pl ./wordlist.10000 ./mcfdict.f24.txt | wc
#   4955   13602  325362

use strict;
use warnings;
use utf8;

binmode(STDIN, ":utf8");
binmode(STDOUT, ":utf8");
binmode(STDERR, ":utf8");

open (my $wordFILE,"<:encoding(utf8)", $ARGV[0]) or die "Couldn't open input file $ARGV[0]!, $!\n";
open (my $searchFILE,"<:encoding(utf8)", $ARGV[1]) or die "Couldn't open input file $ARGV[1]!, $!\n";

chomp(my @words = <$wordFILE>);
close $wordFILE;
# print @words array
# print ("@words\n");

my %searchPair = ();

while (!eof($searchFILE)) {
     
   my $line = <$searchFILE>;
   if (($line ne '') & ($line !~ /^ *$/)) {
      chomp($line);
      my($col1, $col2) = split(",", $line);
      # Put the key => value pair into the hash
      $searchPair{$col1} = $col2;

   }
}
close $searchFILE;

# print the whole hash for debugging
#foreach my $key (sort keys %searchPair) {
#    print "$key => $searchPair{$key}\n";
#}

# check the size of the hash %searchPair by using perl keys function
#my $size = keys %searchPair;
#print("no of keys in \%searchPair: $size\n");

foreach (@words) {
   if (exists($searchPair{$_}))
   {
      print "$_, $searchPair{$_}\n";
   }
}

