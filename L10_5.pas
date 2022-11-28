var a:array[1..8,1..8] of integer;
b:array[1..8] of integer;

begin
  var max,c:integer;
  for var i:=1 to 8 do
  begin
    for var j:=1 to 8 do
    begin
      a[i,j]:=random(0, 10);
      print(a[i,j]);
    end;
    println();
  end;
  for var i:=1 to 8 do
  begin
    for var j:=1 to 8 do
    begin
      if a[i,j]>max then
        max:=a[i,j]; 
    end;
    b[i]:=max;
    max:=0;
  end;
  for var i:=1 to 8 do
  begin
    for var j:=1 to 8 do
    begin
      if a[i,j]=b[i] then
        c:=c+1;
    end;
    if c=1 then
      b[i]:=1
    else
      b[i]:=-1;
    c:=0
  end;
  println(b);
end.