var a:array [1..8, 1..6] of integer;
  b:array[1..8] of integer;

begin
  for var i:=1 to 8 do
  begin
    for var j:=1 to 6 do
    begin
      a[i,j]:=random(-100, 100);
      print(a[i,j]);
    end;
    println();
  end;
  for var i:=1 to 8 do
  begin
    for var j:=1 to 6 do
    begin
      if a[i,j]<0 then
      begin
        b[i]:=-1;
        break;
      end
      else
        b[i]:=1;
    end;
  end;
  println(b);
end.