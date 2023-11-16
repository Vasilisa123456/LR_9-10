program z4;
var
  matrix: array[1..8, 1..8] of Integer;
  minArr: array[1..8] of Integer;
  i, j, sum: Integer;
  average: Real;
begin
  // Заполняем двумерный массив случайными числами от 1 до 100
  Randomize; // Инициализация генератора случайных чисел
  for i := 1 to 8 do
  begin
    for j := 1 to 8 do
    begin
      matrix[i, j] := Random(100) + 1;
      Write(matrix[i, j]:4);
    end;
    Writeln;
  end;
  
  // Находим минимальный элемент в каждой строке и сохраняем в одномерный массив
  for i := 1 to 8 do
  begin
    minArr[i] := matrix[i, 1]; // Первый элемент строки
    for j := 2 to 8 do
    begin
      if matrix[i, j] < minArr[i] then
        minArr[i] := matrix[i, j];
    end;
  end;
  
  // Вычисляем среднее арифметическое
  sum := 0;
  for i := 1 to 8 do
    sum := sum + minArr[i];
  average := sum / 8;
  
  // Проверяем, содержит ли одномерный массив свое среднее арифметическое
  if Trunc(average) in minArr then
    Writeln('Одномерный массив содержит свое среднее арифметическое')
  else
    Writeln('Одномерный массив не содержит свое среднее арифметическое');
end.
