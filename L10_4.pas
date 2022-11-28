var a:array[1..8,1..8] of integer;
  b:array[1..8] of integer;

begin
  var c:boolean;
  var d:real;
  var min:=100;
  for var i:=1 to 8 do
  begin
    for var j:=1 to 8 do
    begin
      a[i,j]:=random(0, 100);
      print(a[i,j]);
    end;
    println();
  end;
  for var i:=1 to 8 do
  begin
    for var j:=1 to 8 do
    begin
      if a[i,j]<min then
        min:=a[i,j]; 
    end;
    b[i]:=min;
    min:=100;
  end;
  print(b);
  println;
  for var i:=1 to 8 do
    d:=d+b[i];
  d:=d/8;
  d:=round(d);
  println('Среднее арефметическое = ',d);
  for var i:=1 to 8 do
    if b[i]=d then
    begin
      c:=true;
      break;
    end
    else
      c:=false;
  if (c) then
    println('YES')
  else
    println('NO');
end.