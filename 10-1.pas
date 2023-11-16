program z1;
var
arr: array[1..6, 1..8] of integer;
resultArr: array[1..6] of integer;
i, j: integer;
begin
// Заполняем двумерный массив случайными значениями
Randomize;
for i := 1 to 6 do
begin
for j := 1 to 8 do
begin
arr[i, j] := Random(21) - 10; // Генерируем случайные числа от -10 до 10
Write(arr[i, j], ' ');
end;
Writeln;
end;

// Формируем одномерный массив
for i := 1 to 6 do
begin
resultArr[i] := 0; // Изначально все элементы равны нулю
// Ищем первое число в строке, большее по модулю 4
for j := 1 to 8 do
begin
  if Abs(arr[i, j]) > 4 then
  begin
    resultArr[i] := arr[i, j];
    break; // Выходим из цикла, если найдено подходящее число
  end;
end;
end;

// Выводим результат
Writeln('Result:');
for i := 1 to 6 do
begin
Write(resultArr[i], ' ');
end;
Readln;
end.





