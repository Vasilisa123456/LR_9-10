program z3;
const n=8;
var a : array[1..n, 1..n] of integer;  // двумерный массив
    b : array[1..n] of integer;        // результирующий одномерный массив
    i, j, k : integer; 
begin
  randomize;
  writeln('Исходный массив:');
  for i:=1 to n do
  begin
    for j:=1 to n do 
    begin
      a[i,j]:=random(20); // заполняем двумерный массив случайными числами от 0 до 19
      write(a[i,j],' ');
    end;
    writeln;
  end;
  
  writeln('Одномерный массив:');
Продолжи   
for k:=1 to n do // проход по строкам
begin
b[k]:=0; // инициализация элемента результирующего массива
for i:= 1 to n-1 do // проход по элементам строки
begin
if (a[k,i]+a[k, i+1] = 7) then b[k]:=1; // если условие выполняется, то записываем 1
end;
write(b[k], ’ '); // вывод элемента результирующего массива
end;
end.