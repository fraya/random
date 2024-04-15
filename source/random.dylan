Module: random

define abstract class <prng> (<object>)
end;

define generic random!
  (prng :: <prng>) => ();

define generic random-integer
  (prng :: <prng>) => (random :: <integer>);

define generic random-machine-word
  (prng :: <prng>) => (random :: <abstract-integer>);
