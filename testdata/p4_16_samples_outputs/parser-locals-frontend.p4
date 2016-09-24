header H {
    bit<32> a;
    bit<32> b;
}

struct S {
    H       h1;
    H       h2;
    bit<32> c;
}

parser p() {
    @name("s") S s_0;
    state start {
        s_0.h1.setInvalid();
        s_0.h2.setInvalid();
        s_0.c = 32w0;
        transition accept;
    }
}

parser empty();
package top(empty e);
top(p()) main;
