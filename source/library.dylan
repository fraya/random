Module: dylan-user

define library random
  export
    random,
    xorshift,
    xorshift-32,
    xorshift-32-impl,
    xorshift-64,
    xorshift-64-impl;

  use big-integers;
  use common-dylan;
  use c-ffi;
  use generic-arithmetic;
  use io, import: { format-out };
end library;

define module random
  export
    <prng>,
    random!,
    random-integer,
    random-machine-word;

  use common-dylan;
  use machine-words;
end module;

define module xorshift
  export
    <xorshift>;

  use common-dylan;
  use random, export: { all };
end module;

define module xorshift-32
  create
    <xorshift-32>;

  use common-dylan;
  use xorshift, export: { all };
end module;

define module xorshift-32-impl
  use random;
  use xorshift;
  use xorshift-32;

  use common-dylan;
  use c-ffi;
end module;

define module xorshift-64
  create
    <xorshift-64>;

  use xorshift,
    export: { all };
end module;

define module xorshift-64-impl
   use random;
   use xorshift;
   use xorshift-64;

   use generic-arithmetic, prefix: "big-";
   use common-dylan;
   use c-ffi;
end module;
