var (x, y, z) = (1, 2, 3);

def foo() var {
  if setter then
    writeln("setter version of foo() used");
  else
    writeln("value version of foo() used");
  yield x;
  yield y;
  yield z;
}

writeln((x,y,z));

for i in foo() do
  writeln(i);

writeln((x,y,z));

for j in foo() do
  j = 4;

writeln((x,y,z));
