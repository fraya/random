Module: dylan-user

define library random-test-suite
  use common-dylan;
  use io;
  use testworks;
  use random;
end library;

define module random-test-suite
  use common-dylan;
  use format-out;
  use testworks;

  use random;
  use xorshift-64;
end module;
