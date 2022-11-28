var a:array[1..8,1..8] of integer;
  b:array[1..8] of integer;

begin
  for var i:=1 to 8 do
  begin
    for var j:=1 to 8 do
    begin
      a[i,j]:=random(-10, 10);
      print(a[i,j]);
    end;
    println();
  end;
  for var i:=1 to 8 do
  begin
    for var j:=1 to 7 do
    begin
      if a[i,j]+a[i,j+1]=7 then
      begin
        b[i]:=1;
        break;
      end
      else
          b[i]:=-1;
    end;
  end;
  println(b);
end.