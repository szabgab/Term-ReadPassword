use strict;
use warnings;

use ExtUtils::MakeMaker;
my %prereqs;
if ( $^O eq 'MSWin32' ) {
	%prereqs = (
		'Win32'          => 0,
		'Win32::Console' => 0,
		'Win32API::File' => 0,
	);
}

my %conf = (
	'NAME'         => 'Term::ReadPassword',
	'VERSION_FROM' => 'lib/Term/ReadPassword.pm',
	'LICENSE'      => 'perl',
	'PREREQ_PM'    => {
		'Test::More' => 0,
		%prereqs,
	},
);

if ( eval { ExtUtils::MakeMaker->VERSION(6.46) } ) {
	$conf{META_MERGE} = {
		'meta-spec' => { version => 2 },
		resources   => {
			repository => {
				type    => 'git',
				url     => 'http://github.com/szabgab/Term-ReadPassword.git',
				web     => 'http://github.com/szabgab/Term-ReadPassword',
				license => 'http://dev.perl.org/licenses/',
			},
			bugtracker => {
				web => 'http://github.com/szabgab/Term-ReadPassword/issues',
			},
		},
	};
}

WriteMakefile(%conf);

