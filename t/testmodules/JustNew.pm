package JustNew;
#simple class, but without a new_inflate method.

use strict;
use warnings;

sub new
{
	my $class = shift;
	
	my $self = {};
	bless $self, $class;
	$self->_init(@_);
	return $self;
}

sub _init
{
	my $self = shift;
	my $string = shift;
	
	$self->{string} = $string;
}

sub get_string
{
	my $self = shift;
	return $self->{string};
}

sub set_string
{
	my $self = shift;
		
	$self->{string} = shift;
}

sub callsub #returns the name of the sub that called it.
{
	return (caller(1))[4];
}

1;