const
  n = 10; // размер массивов

var
  arr1: array[1..n] of Integer; // первый массив
  arr2: array[1..n] of Integer; // второй массив
  sum1, sum2, i: Integer; // переменные для хранения сумм и счетчика

begin
  // заполняем массивы случайными значениями
  for i := 1 to n do
  begin
    arr1[i] := Random(21) - 10; // случайное значение от -10 до 10
    arr2[i] := Random(21) - 10; // случайное значение от -10 до 10
  end;
  
  // находим сумму положительных элементов первого массива
  sum1 := 0;
  for i := 1 to n do
  begin
    if arr1[i] > 0 then
      sum1 := sum1 + arr1[i];
  end;
  
  // находим сумму положительных элементов второго массива
  sum2 := 0;
  for i := 1 to n do
  begin
    if arr2[i] > 0 then
      sum2 := sum2 + arr2[i];
  end;
  
  // проверяем, сумма которого массива меньше,
  // и умножаем на 10 его элементы
  if sum1 < sum2 then
  begin
    for i := 1 to n do
    begin
      arr1[i] := arr1[i] * 10;
    end;
  end
  else
  begin
    for i := 1 to n do
    begin
      arr2[i] := arr2[i] * 10;
    end;
  end;
  
  // выводим исходные и измененные массивы
  Writeln('Исходные массивы:');
  Writeln('Первый массив:');
  for i := 1 to n do
  begin
    Write(arr1[i], ' ');
  end;
  
  Writeln;
  
  Writeln('Второй массив:');
  for i := 1 to n do
  begin
    Write(arr2[i], ' ');
  end;
  
  Writeln;
end.
