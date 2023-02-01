create procedure SayHelloWorld
as 
declare @variable  nvarchar(20);
set @variable = 'Hello World!';
print(@variable);

exec SayHelloWorld;

create procedure SayTodayDate
as
print(getdate());

exec SayTodayDate;

create procedure SayTodayTime
as
select convert(varchar(10), GETDATE(), 108);

exec SayTodayTime;

create procedure SumThreeNumbers
			@first_num int,
			@second_num int, 
			@thrid_num int
as
print(@first_num + @second_num + @thrid_num);

declare @first int ;
declare @second int;
declare @third int;
set @first = 15;
set @second = 23;
set @third =8;

exec SumThreeNumbers @first, @second, @third;

create procedure AvgThreeNumbers
			@first_num int,
			@second_num int, 
			@thrid_num int
as
print((@first_num + @second_num + @thrid_num)/3);

declare @first int ;
declare @second int;
declare @third int;
set @first = 15;
set @second = 23;
set @third =8;

exec AvgThreeNumbers @first, @second, @third;

create procedure MaxNumber
			@first_num int,
			@second_num int, 
			@thrid_num int
as
declare #table as table,
insert into #table	
print(max(@first_num, @second_num, @thrid_num));

declare @first int ;
declare @second int;
declare @third int;
set @first = 15;
set @second = 23;
set @third =8;

exec MaxNumber @first, @second, @third;

create procedure DrawLineLength
			@length int,
			@symbol nvarchar(10)
as
declare @cnt int = 0

while @cnt < @length
begin
	print(@symbol + '\n');
	set @cnt = @cnt + 1;
end;

declare @my_length int;
declare @my_symbol nvarchar(10);
set @my_length = 5;
set @my_symbol = 'r';


exec DrawLineLength @my_length, @my_symbol;

---functions---

create function sayHelloName (@name nvarchar(20))
returns nvarchar(40)
as begin 
declare @txt nvarchar(40)
set @txt = 'Hello, ' + @name
return @txt
end;

select dbo.sayHelloName('Dimash');

--WARNING NOT COMPLETE---

--create function minFromFiveNumbers(@first int, @second int, @third int, @fourth int, @fifth int)
--returns int
--as begin
--if(@first <= @second and @first <= @third and @first <= @fourth and @first <= @fifth, return @first, continue),



--create function sumMaxMinFiveNumbers(@first int, @second int, @third int, @fourth int, @fifth int)
--returns int
--as begin
--declare @min int
--set @min = 
