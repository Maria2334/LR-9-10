var b,c: integer;
  a:array of integer;

function pos(n:integer):integer;
begin
  for var i:=1 to n do
  begin
    if a[i]>0 then
    begin
      b:=i;
      break;
    end
    else
      b:=0;
  end;
  for var i:=1 to n do
    if (a[i] < 0) then
      c:=i;
  println('Номер первого положительного элемента: ',b);
  println('Номер последнего отрицательного элемента: ',c);
end;

begin
  var n:=readinteger;
  setlength(a,n+1);
  for var i:=1 to n do
    a[i]:=readinteger();
  pos(n)
end.