Module: xorshift-32-impl

define class <xorshift-32> (<xorshift>)
  slot xorshift-32-state :: <integer>,
    init-keyword: seed:;
end class;

define C-function C-xorshift32
  parameter state :: <C-unsigned-long>;
  result    rnd   :: <C-unsigned-long>;
  c-name: "xorshift32"
end C-function;

define method random!
    (prng :: <xorshift-32>) => ()
  prng.xorshift-32-state := C-xorshift32(prng.xorshift-32-state)
end;

define method random-integer
    (prng :: <xorshift-32>) => (random :: <integer>)
  prng.xorshift-32-state
end;
