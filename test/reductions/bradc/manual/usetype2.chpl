class mysumreduce {
  type t;
  
  fun ident() {
    return 0;
  }

  fun combine(x: t, y: t): t {
    return x + y;
  }
}

config var n: int = 10;

var D: domain(1) = [1..n];

var A: [D] int;

forall i in D {
  A(i) = i;
}

var myreduce = mysumreduce(t = A.elemtype); -- this may be the wrong name
var state: myreduce.t = myreduce.ident();
for i in D {
  state = myreduce.combine(state, A(i));
}
var result = state;

writeln("result is: ", result);
