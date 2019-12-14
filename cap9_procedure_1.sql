
-- Criando Procedure
DELIMITER $
CREATE PROCEDURE CONTA()
BEGIN
	SELECT 10+10 as "CONTA";
END
$

DELIMITER ;

--Chamando procedure
CALL CONTA();

--Deletando procedure
DROP procedure CONTA;


-- Criando Procedure com parametros
DELIMITER $
CREATE PROCEDURE CONTA(n1 int, n2 int)
BEGIN
	SELECT n1+n2 as "CONTA";
END
$

