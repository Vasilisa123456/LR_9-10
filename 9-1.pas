program z1;
function MultiplyElements(arr: array of Integer): Integer;
var
  i: Integer;
begin
  Result := 1;
  for i := Low(arr) to High(arr) do
    Result := Result * arr[i];
end;

// Функция, которая вычисляет произведение только четных элементов массива
function MultiplyEvenElements(arr: array of Integer): Integer;
var
  i: Integer;
begin
  Result := 1;
  for i := Low(arr) to High(arr) do
  begin
    if arr[i] mod 2 = 0 then // Проверяем, является ли элемент четным
      Result := Result * arr[i];
  end;
end;

var
  arr: array of Integer;
  i: Integer;
begin
  SetLength(arr, 5);
  arr[0] := 2;
  arr[1] := 4;
  arr[2] := 6;
  arr[3] := 8;
  arr[4] := 10;

  // Вычисляем произведение всех элементов массива
  writeln(MultiplyElements(arr)); // Вывод: 3840

  // Вычисляем произведение только четных элементов массива
  writeln(MultiplyEvenElements(arr)); // Вывод: 3840

  readln;
end.