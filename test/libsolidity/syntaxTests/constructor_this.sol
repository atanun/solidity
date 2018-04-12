contract C {
    function f() public pure {}
    constructor() public {
        C c = this;
        c.f(); // this does not warn now, but should warn in the future
        this.f();
        (this).f();
    }
}
// ----
// Warning: (172-176): "this" used in constructor.
// Warning: (191-195): "this" used in constructor.
