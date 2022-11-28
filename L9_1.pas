var a:array of integer;
function pr(n: integer): integer;
var
  p:=1;
begin
  for var i:=1 to n do
    if a[i] mod 2=0 then
      p:=p*a[i];
  println(p);
end;
begin
  var b:=readinteger;
  setlength(a,b+1);
  for var i:=1 to b do
    a[i] := readinteger();
  pr(b);
end.