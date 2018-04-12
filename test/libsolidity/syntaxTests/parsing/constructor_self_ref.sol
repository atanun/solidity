contract Foo {
    bool public bar;

    constructor(Foo other) public {
        require(other.bar());
    }
}
// ----
