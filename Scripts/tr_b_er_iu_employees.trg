CREATE OR REPLACE TRIGGER tr_b_er_iu_employees
  BEFORE INSERT OR UPDATE ON employees
  FOR EACH ROW
DECLARE
  v_count         NUMBER;
  v_validacao_cpf NUMBER;
BEGIN
  SELECT COUNT(1)
    INTO v_count
    FROM departments d
   INNER JOIN locations l
      ON l.location_id = d.location_id
   WHERE d.department_id = :new.department_id
     AND l.country_id = 'BR';

  IF v_count > 0 THEN
    BEGIN
      v_validacao_cpf := valida_cpf(:new.cpf);
    
      IF v_validacao_cpf = 0 THEN
        raise_application_error(-20001
                               ,'CFP invalido ');
      END IF;
    EXCEPTION
      WHEN OTHERS THEN
        raise_application_error(-20002
                               ,'Erro ao validar CFP->' || sqlerrm);
      
    END;
  END IF;
END tr_b_er_iu_employees;
/
