#!/usr/bin/perl
use warnings;
use utf8;

#last updated: 16 May 2017
#written by Ye, AI Lab.,
#Okayama Prefectural University, Japan
#How to run: perl mk-wordtag.pl <input-file-name> <delimeter> <w|t|wt|cw|c> 
#Here, 
# w = print word only (i.e. without POS tags), 
# t = print tag only
# wt = print word/tag
# cw = print words including compound words,
# lcw = list compound words, 
# c = print sentence that contain tagging error of "word/" 
# 
# How to run:
# e.g. ./mk-wordtag.pl ./kh-pos.all.f2.utf8 "\/" w | less -r
# e.g ./mk-wordtag.pl ./kh-pos.all.f2.utf8 "\/" t
# e.g ./mk-wordtag.pl ./kh-pos.all.f2.utf8 "\/" wt

binmode STDIN,  ":utf8";
binmode STDOUT, ":utf8";

my $TagMarker=$ARGV[1]; # give command line parameter such as "\|", "\/" ...
my $word_or_tag=$ARGV[2];

open (my $inputFILE,"<:encoding(utf8)", $ARGV[0]) or die "Couldn't open input file $ARGV[0]!, $!\n";

my $one_token; my $tmpLine=""; my $tmpLine2="";

   while($line = <$inputFILE>)
   {
      if ($line!~/^$/)
      {
         chomp ($line);
         my $originalLine = $line;
         #print $line, "\n";
            
         $line =~ s/\s+/ /g;
         $line =~ s/^\s+|\s+$//g;
         if ($word_or_tag eq "w" || $word_or_tag eq "t" || $word_or_tag eq "wt" || $word_or_tag eq "c")
         {
            $line =~ s/\|/ /g;
         }

         my @token = split('\s', $line);
         #print "\@tokens:\n"."@token\n"; 
         foreach $one_token(@token)
         {
            #print "one_token: $one_token\n";
            my ($text, $tag) = split(/$TagMarker/, $one_token);
            if($word_or_tag eq "w")
            {
               $tmpLine = $tmpLine.$text." ";
            }elsif($word_or_tag eq "t")
            {
               $tmpLine = $tmpLine.$tag." ";
            }elsif($word_or_tag eq "wt" || $word_or_tag eq "c")
            {
               $tmpLine = $tmpLine.$text." ";
               $tmpLine2 = $tmpLine2.$tag." ";
            }elsif($word_or_tag eq "lcw" || $word_or_tag eq "cw")
            {
               if($one_token =~ m/\|/g)
               { 
                  my @ptoken = split('\|', $one_token); my $combined_cword;
                     foreach my $cword(@ptoken)
                     {
                        $cword =~ s/\/[a-zA-Z].*//g;
                        $combined_cword = $combined_cword.$cword;
                     }
                        if ($word_or_tag eq "lcw")
                        {
                           print "$one_token\t$combined_cword\n"; #for lcw option;
                        }
                   $tmpLine = $tmpLine.$combined_cword." "; #for cw option
                }elsif($one_token !~ m/\|/g)
                {

                   $tmpLine = $tmpLine.$text." ";
                }
            }
        }
            #chomp($tmpLine);
            if ($word_or_tag eq "w" || $word_or_tag eq "t" || $word_or_tag eq "cw")
            {
               $tmpLine =~ s/^\s+|\s+$//g;
               print $tmpLine."\n";
            }elsif ($word_or_tag eq "wt")
            {
                
               $tmpLine =~ s/^\s+|\s+$//g;
               $tmpLine2 =~ s/^\s+|\s+$//g;
               print $tmpLine."\n"; print $tmpLine2."\n";
            }elsif ($word_or_tag eq "c")
            {
               $tmpLine =~ s/^\s+|\s+$//g;
               $tmpLine =~ s/\s+/ /g;
               $tmpLine2 =~ s/^\s+|\s+$//g;
               $tmpLine2 =~ s/\s+/ /g;
               my $word_count = split / /,$tmpLine;
               my $tag_count = split / /,$tmpLine2;

               if ($word_count != $tag_count)
               { 
                  print "$originalLine\n";
                  print "$word_count: $tag_count\n";
                  print $tmpLine."\n"; print $tmpLine2."\n";
               }
            
             }elsif ($word_or_tag eq "lcw")
             {
               # print $tmpLine2;
             }
                    $tmpLine = ""; $tmpLine2 = "";
         }
      }

close($inputFILE);
