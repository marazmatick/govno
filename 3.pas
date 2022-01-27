begin
  var mas:array of integer;
  var N:=ReadInteger('Введите колличество элементов в массиве');
  mas:=new integer[N];
  var k:integer;
  for var i:=0 to N-1 do
    begin
    mas[i]:=random(-28,27);
    if (mas[i] mod 3=0)then
      k+=1; 
    end;
  println(mas);
  println('Количество элементов массива кратных 3:'+k);
  
  var spros:=ReadInteger('Хотите ли увеличить массив?(0-нет;1-да)');
   var masCopy:=copy(mas);//создаю копию массива
 if spros=1 then
  begin
  var dopYvel:=ReadInteger('Сколько эл хотите добавить в массив');
      SetLength(masCopy,masCopy.Length+dopYvel);//увеличиваю копию массива
      for var i:=mas.Length to masCopy.Length-1 do
      begin
    masCopy[i]:=random(-28,27);
    if (masCopy[i] mod 3=0)then
      k+=1; 
    end;
      println('Количество элементов массива кратных 3:'+k);
      println('Увеличенный массив',masCopy);
 end; 
  sort(masCopy);
  println('Массив отсортированный по возврастанию:',masCopy);
  SortDescending(masCopy);
  println('Массив отсортированный по убыванию:',masCopy);
  println('Самый высокий индекс массива:',High(masCopy));
  println('Равны ли массивы mas и masCopy:',ArrEqual(mas,masCopy));
end.