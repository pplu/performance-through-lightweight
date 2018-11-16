#!/usr/bin/env perl

use Mojolicious::Lite;
use HTTP::Tiny;

my $ua = HTTP::Tiny->new;
my $content = $ua->get('https://metacpan.org/recent')->{ content };

my ($results) = ($content =~ m/(\d+,\d+)/);

get '/' => {text => "These are $results"};

app->start;
