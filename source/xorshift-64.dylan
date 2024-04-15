Module: xorshift-64-impl

define class <xorshift-64> (<xorshift>)
  slot xorshift-64-state :: <abstract-integer> = $minimum-integer,
    init-keyword: seed:;
end class;

define C-function C-xorshift64
  parameter state :: <C-unsafe-unsigned-long>;
  result    rnd   :: <C-unsafe-unsigned-long>;
  c-name: "xorshift64"
end C-function;

define method random!
    (prng :: <xorshift-64>) => ()
  prng.xorshift-64-state := C-xorshift64(prng.xorshift-64-state)
end;

define method random-machine-word
    (prng :: <xorshift-64>) => (random :: <abstract-integer>)
  prng.xorshift-64-state
end;

