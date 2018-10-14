
#!/usr/bin/perl
use strict;
use Cwd;
use List::Util qw( min max );
chdir getcwd;
open F,"InfiniumOmni5Exome-4v1-3_A1_b144_rsids.txt";
while(<F>){
	next if /RsID/;
	chomp;
	my ($name,@line)=split /[\s+|,]/;
	next if $id eq ".";
	foreach my $rs(@line){
		print "$rs\n";
	}	
}

