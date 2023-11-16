program z5;

const
  size = 10;

var
  arr1, arr2: array[1..size] of integer;
  i: integer;
  maxElement, minElement: integer;
  indexMax, indexMin: integer;
  flag: boolean;

begin
  // Заполнение массивов случайными числами
  Randomize;
  for i := 1 to size do
  begin
    arr1[i] := Random(100);
    arr2[i] := Random(100);
  end;

  // Печать исходных массивов
  writeln('Исходный массив 1:');
  for i := 1 to size do
    write(arr1[i], ' ');
  writeln;
  writeln('Исходный массив 2:');
  for i := 1 to size do
    write(arr2[i], ' ');
  writeln;
  
  // Поиск первого кратного пяти элемента
  flag := false;
  for i := 1 to size do
  begin
    if (arr1[i] mod 5 = 0) then
    begin
      flag := true;
      break;
    end;
  end;
  
  // Замена максимального элемента нулем в первом массиве
  if flag then
  begin
    maxElement := arr1[1];
    indexMax := 1;
    for i := 2 to size do
    begin
      if arr1[i] > maxElement then
      begin
        maxElement := arr1[i];
        indexMax := i;
      end;
    end;
    arr1[indexMax] := 0;
  end;
  
  // Поиск минимального элемента во втором массиве
  minElement := arr2[1];
  indexMin := 1;
  for i := 2 to size do
  begin
    if arr2[i] < minElement then
    begin
      minElement := arr2[i];
      indexMin := i;
    end;
  end;
  
  // Умножение на 2 всех элементов после минимального во втором массиве
  for i := indexMin + 1 to size do
    arr2[i] := arr2[i] * 2;
  
  // Печать измененных массивов
  writeln('Измененный массив 1:');
  for i := 1 to size do
    write(arr1[i], ' ');
  writeln;
  writeln('Измененный массив 2:');
  for i := 1 to size do
    write(arr2[i], ' ');
  writeln;
  
  readln;
end.
