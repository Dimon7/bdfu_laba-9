program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var   fin : text;
      val,i,sum : integer;
begin

  Assign(fin, 'input.txt');

   for i:=1  to 5 do
    begin
    append(fin); //����� �� ��������� � ����� �����
      readln(val); //��� ����� ������������

      writeln(fin,val); //�������� �� ����� � ����
    end;

   Reset(fin) ; //����� �� ���������� � �����
   while(not(Eof(fin))) do //���� �� ����� �����
   begin
      readln(fin, val);
      sum := sum + val;
   end;
  writeln('Sum = ',sum);
  readln;
 close(fin);   //��������� ����

end.
