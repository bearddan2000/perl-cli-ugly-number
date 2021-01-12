#!/usr/bin/env perl

# This function divides a by greatest divisible power of b
sub maxDivide
{
  my ($a, $b) = @_;
  while($a % $b == 0)
  {
    $a /= $b;
  }
  return $a;
}

# Function to check if a number is ugly or not
sub isUgly
{
  $no = shift;
  $no = &maxDivide($no, 2);
  $no = &maxDivide($no, 3);
  $no = &maxDivide($no, 5);

  return ($no == 1)? 1 : 0;
}

# Function to get the nth ugly number
sub getNthUglyNo
{
  my $n = shift;
  my $i = 1;
  my $count = 1;   # ugly number count

  # Check for all integers untill ugly count becomes n
  while ($n > $count)
  {
    $i++;
    if(&isUgly($i) == 1)
    {
        $count++;
    }
  }
  printf("[OUTPUT] %d\n",  $i);
}

# Driver program to test above functions
sub main
{
    $input = 10;
    printf("[INPUT] %d\n",  $input);
    &getNthUglyNo($input);
}

&main;
