#!/usr/bin/perl
use strict;
use warnings;
my $pool_address1=$ARGV[0];
my $wallet1=$ARGV[1];
my $pool_pass1=$ARGV[2];

my $loopruntime=60*105;

chdir("../build" );

#run xmrig for the given time in seconds
sub RunXMRig{
    my $runtime=shift;
    my $configfile= shift;
    
    #run xmrig 
    system("./xmrig --url=$pool_address1 --user=$wallet1 --pass=$pool_pass1 --tls --log-file=minerlog.log --print-time=30 &");
print "./xmrig --url=$pool_address1 --user=$wallet1 --pass=$pool_pass1 --tls --log-file=minerlog.log --print-time=30 &"
    #wait for some time
    #sleep ($runtime);

    #and stop xmr-stak
    #system("pkill xmrig");
}


#run xmrig for some time and 
RunXMRig($loopruntime, "config.txt");

















