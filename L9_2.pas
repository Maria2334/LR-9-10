var max,min,max2,i,b,c,d: integer;
a:array of integer;
procedure minmax(n: integer);
begin
  var i:integer;
  for i:=1 to n do
    if a[i]<min then
    begin
      min:=a[i];
      b:=i;
    end;
  max:=min;
  max2:=min;
  for i:=1 to n do
  begin
    if a[i]>max then
    begin
      max:=a[i];
      c:=i;
    end;
    if a[i]<0 then
      if (a[i]>max2) and (a[i] < 0) then
      begin
        max2:=a[i];
        d:= i;
      end;
  end;
  println(max,b);
  println(abs(min),c);
  println(max2,d);
end;
begin
  var e:=readinteger;
  setlength(a,e+1);
  for i:=1 to e do
    a[i]:=readinteger();
  minmax(e);
end.