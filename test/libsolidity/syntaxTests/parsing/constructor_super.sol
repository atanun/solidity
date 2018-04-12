contract A {
  function x() pure internal {}
}

contract B is A {
  constructor() public {
    super.x();
  }

  function x() pure internal {
    require(false);
  }
}

contract C is A {
  constructor() public {
    x();
  }
}
