program z2;
const
    m = 20;
 
var
    arr: array[1..m] of byte;
    max, index: byte;
    i: byte;
 
begin
    randomize;
 
    for i := 1 to m do begin
        arr[i] := random(100);
        write (arr[i]:3);
    end;
 
    index := 1;
    max := arr[1];
 
    for i := 2 to m do
        if arr[i] < max then begin
            index := i;
            max:= arr[i];
        end;
 
    writeln;
    writeln ('Минимальный элемент = ',max);
    writeln ('номер элемента: ', index);
 
end.