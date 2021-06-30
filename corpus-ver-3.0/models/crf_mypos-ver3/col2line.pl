#!/usr/bin/perl
use strict;
use utf8;

# last updated 16 May 2017
# written by Ye Kyaw Thu
# change column to line format

binmode(STDIN, ":utf8");
binmode(STDOUT, ":utf8");
binmode(STDERR, ":utf8");

open (col_FILE, "<:encoding(utf8)", $ARGV[0]) or die "Couldn\'t open input file $ARGV[0]!, $!\n";

my $tmpLine;
foreach my $line (<col_FILE>)
{
   chomp($line);

   if($line ne "")
   {
      $line =~ s/\t/\//;
      $tmpLine = $tmpLine.$line." ";
   }else
   {
      $tmpLine =~ s/\s+$//;
      print $tmpLine."\n";
      $tmpLine = "";
   }
}
close (col_FILE);
