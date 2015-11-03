use strict;
use warnings;
use Test::More tests => 4;
use Number::Bytes::Human qw( parse_bytes );

is parse_bytes("5.5 TB"),    5500000000000, 'parse_bytes(5.5 TB)';
is parse_bytes("5.50 TB"),   5500000000000, 'parse_bytes(5.50 TB)';
is parse_bytes("5.500 TB"),  5500000000000, 'parse_bytes(5.500 TB)';
is parse_bytes("5.5000 TB"), 5500000000000, 'parse_bytes(5.5000 TB)';
