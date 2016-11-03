#!/usr/bin/perl

use strict;
use WWW::Mechanize;
use LWP::Simple;

my $url = 'http://www.gardnermuseum.org/music/listen/music_library';

print "\n\n*** Open URL\n";

my $mech = WWW::Mechanize->new();
$mech->get( $url );
my @links = $mech->links();

for my $link ( @links ) {
	if ( $link->url =~ m/http.*mp3/ ) {   
		my @parts = split /\//, $link->url;	
		my $filename = $parts[-1];
		if (-e $filename) {
			print "*** $filename has been downloaded already.\n";
		} else {
			print "*** Downloading $filename.\n";
			getstore( $link->url, $filename);
			print "*** Sleeping.\n";
			sleep 30;
		}
	}
}
