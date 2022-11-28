var a:array of integer;
 b:array of integer;

function f(n:integer):integer;
var sa,sb: integer;
begin
  for var i:= 0 to n-1 do
    if a[i]>0 then
      sa:=sa+a[i];
  for var j:=0 to n-1 do
    if b[j]>0 then
      sb:=sb+b[j];
  if sa>sb then
  begin
    for var j:=0 to n-1 do
      b[j]:=b[j]*10;
    println(b);
  end
  else
    begin
    for var i:=0 to n-1 do
      a[i]:=a[i]*10;
    println(a);
  end
end;

begin
  var n:=readinteger;
  a:=new integer[n];
  b:=new integer[n];
  print('Введите первый массив');
  for var i:=0 to n-1 do
    a[i]:=readinteger();
  print('Введите второй массив');
  for var j:=0 to n-1 do
    b[j]:=readinteger();
  f(n)
end.