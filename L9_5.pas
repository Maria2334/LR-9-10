var a,b:array of integer;
  n,trye:integer;

function max(const a,b:array of integer): integer;
begin
  for var i:=0 to a.Length-1 do
  begin
    if a[i] mod 5=0 then
    begin
      max:= 0;
      break;
    end;
    if b[i] mod 5=0 then
    begin
      max:=1;
      break;
    end;
  end;
end;

function f(var a,b: array of integer): integer;
begin
  var maximum, minimal, podst1, podst2: integer;
  minimal:=100;
  maximum:=-100;
  for var i:= 0 to a.Length-1 do
  begin
    if a[i]>maximum then
    begin
      podst1:=i;
      maximum:=a[i];
    end;
    if b[i]<minimal then
    begin
      podst2:=i;
      minimal:=b[i];
    end;
  end;
  a[podst1]:=0;
  for var i:=0 to a.Length-1 do
  begin
    print(a[i]);
    if i>podst2 then
      b[i]:=b[i]*2;
  end;
  println;
  for var i:=0 to a.Length-1 do
    print(b[i]);
end;

begin
  print('Введите размер масивов');
  read(n);
  print('Первый массив');
  setlength(a,n);
  setlength(b,n);
  for var i := 0 to a.Length - 1 do
  begin
    a[i]:=random(0, 100);
    b[i]:=random(0, 100);
    print(a[i]);
  end;
  println;
  print('Второй массив');
  for var i:=0 to a.Length - 1 do
    print(b[i]);
  println;
  trye:=max(a, b);
  if trye = 0 then
    f(a,b)
  else
    f(b,a);
end.