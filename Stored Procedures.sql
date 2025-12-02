-- Stored Procedures 

--nome_schema 
--nome_procedure
--Tipo1
--Varting
--Default
--Ouput
--With recompile
--with encryption
--execute as
--Caller
--Self
--Owner
--For replication

create procedure proc_a
as
begin
	print'proc_a' + cast(@@nestlevel as varchar(2));
	exec proc_b;
	print 'Voltei para proc_a';
end

create procedure proc_b
as
begin
	print 'proc_b' +cast(@@nestlevel as varchar(2));
	exec proc_c;
	print 'voltei para proc_b';
end 


create procedure proc_c
as
begin
	print 'proc_c' +cast(@@nestlevel as varchar(2));
end 

exec proc_A