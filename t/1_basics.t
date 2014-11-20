#!perl

use Test::More;
plan skip_all => 'This test does not work on Windows' if $^O eq 'MSWin32';

plan tests => 1;
use Term::ReadPassword;
pass;

