#! /usr/bin/perl
##---------------------
##Gulsum Oz 
##goz2
##CSC 368 -Assignment-2 
##February 4, 2018
##---------------------

my $filename = $ARGV[0];

if (!open PASSWD, $filename){
die "how did you get dogged in ?($!)";
}

# open file for writing
 open( OUTFILE, ">Ortext.enc" )
 or die "Can't open outfile : $!\n" ;

while (<PASSWD>)
{
s/a/z/g;
s/b/y/g;
s/c/o/g;
s/d/m/g;
s/e/n/g;
s/f/t/g;

print OUTFILE  "$_\n" ;
}
close(OUTFILE);
close(PASSWD);


