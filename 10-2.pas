program z2;
var
i, j: integer;
arr: array[1..8, 1..6] of integer;
result: array[1..8] of integer;
begin
// Заполняем двумерный массив случайными числами
for i := 1 to 8 do
for j := 1 to 6 do
arr[i,j] := random(21) - 10; // от -10 до 10

// Выводим исходный массив на экран
writeln('Исходный массив:');
for i := 1 to 8 do
begin
for j := 1 to 6 do
write(arr[i,j]:5);
writeln;
end;

// Формируем одномерный массив
for i := 1 to 8 do
begin
result[i] := 1;
for j := 1 to 6 do
begin
if arr[i,j] < 0 then
begin
result[i] := -1;
break;
end;
end;
end;

// Выводим результат на экран
writeln('Одномерный массив:');
for i := 1 to 8 do
write(result[i]:5);

readln;
end.