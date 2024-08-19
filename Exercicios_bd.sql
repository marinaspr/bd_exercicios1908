CREATE DATABASE exercicio;
use exercicio;

--Ex 1
DECLARE
	@salario decimal(6,2) = 1412.00;
DECLARE
	@novosalario decimal(6,2) = @salario * 1.25;

begin
	print 'exercicio 1'
	print 'Salário mínimo antigo = ' + CAST(@salario as varchar);
	print 'Salário mínimo atual = ' + CAST(@novosalario as varchar);
end;

--Ex 2
declare
	@dolar decimal(3,1) = 45;
declare
	@real decimal(4,1) = 5.10 * @dolar;

begin
	print 'exercicio 2'
	print 'Valor em dolar = ' + CAST(@dolar as varchar);
	print 'Valor em real = ' + CAST(@real as varchar);
end;

--Ex 3
DECLARE
	@valorcarro decimal(8,2) = 210000.00;
declare
	@juros decimal(8,2) = @valorcarro*0.03;
declare
	@parcela decimal(8,2) = @juros/10;

begin
	print 'exercicio 3'
	print 'Valor total:' + cast(@juros as varchar);
	print 'Valor parcelas: ' + cast(@parcela as varchar);
end;

--EX 4
declare
	@valortotal decimal(10,2) = 10000,
	@parcseis decimal(10,2),
	@parcdezoito decimal(10,2),
	@parcdoze decimal(10,2);

begin
	set @valortotal = @valortotal - @valortotal*0.2;
	set @parcseis = (@valortotal + @valortotal*0.1)/6;
	set @parcdoze = (@valortotal + @valortotal*0.15)/12;
	set @parcdezoito = (@valortotal + @valortotal*0.20)/18;

	print 'exercicio 4'
	print 'Parcela carro em 6x: '+ cast(@parcseis as varchar);
	print 'Parcela em 12x: ' + cast(@parcdoze as varchar);
	print 'Parcela em 18x: ' + cast(@parcdezoito as varchar);
end;

--EX 5
declare
	@sal decimal(10,2) = 15000,
	@salliq decimal (10,2);

begin
	if @sal <= 1313.69
		begin
			set @salliq = @sal - @sal;
		end;
	if @sal >= 1313.70 and @sal <= 2625.12
		begin
			set @salliq = @sal - @sal*0.15;
		end;
	if @sal > 2625.12
		begin
			set @salliq = @sal - @sal*0.27;
		end;

    print 'Salário antigo: ' + cast(@sal as varchar);
	print 'O salario liquido eh: ' + cast( @salliq as varchar);
end;














