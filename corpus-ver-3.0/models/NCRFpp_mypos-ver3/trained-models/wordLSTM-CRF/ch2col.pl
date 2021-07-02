#!/usr/bin/perl
use strict;
#use warnings;
no warnings qw ( uninitialized );
binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";

# last updated: 26 Oct 2016
# written by Ye Kyaw Thu
# change line to column format

open (inputFILE,"<:encoding(utf8)", $ARGV[0]) or die "Couldn't open input file $ARGV[0]!, $!\n";

my $line;

while ($line = <inputFILE>)
{
   chomp($line);
   #my $gra =""; my $pho = "";
   #($gra, $pho) = split("\s", $line);
   my @wordtag = split(" ", $line);
   
   foreach my $i (@wordtag)
   {
     my $w; my $t;
     ($w, $t) = split("/", $i);
     print "$w $t\n";
   }
 
   print "\n";
}

close (inputFILE);

