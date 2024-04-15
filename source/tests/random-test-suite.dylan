Module: random-test-suite

// define test xoshiro-32-test ()
//   let seed = 157;
//   let prng = make(<xorshift-32>, seed: seed);
//   for (i from 0 below 20)
//     format-out("%=\n", random!(prng));
//     force-out();
//   end
// end test;

define test xoshiro-64-test ()
  let prng = make(<xorshift-64>);
  for (i from 0 below 20)
    prng.random!;
    format-out("%=\n", prng.random-machine-word);
    force-out();
  end
end test;

// Use `_build/bin/random-test-suite --help` to see options.
run-test-application()
