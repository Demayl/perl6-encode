use v6;
use Encode;

use Test;

plan 2;

is Encode::decode('iso-8859-2', buf8.new(0xa3))>>.chr.join, 'Ł', 'decode';
is Encode::decode('iso-8859-2', buf8.new(76))>>.chr.join, 'L', 'decode';
