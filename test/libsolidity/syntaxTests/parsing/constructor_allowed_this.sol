contract A {
    function a() public pure {
    }
}
contract B {
    constructor(address) public {
    }
    function b(address) public returns (A) {
        return new A();
    }
}
contract C {
    B m_b;
    constructor() public {
        m_b = new B(this);
        m_b.b(this).a();
    }
}
