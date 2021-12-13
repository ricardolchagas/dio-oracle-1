CREATE OR REPLACE PACKAGE pkg_exemplo IS

  function fc_computa_valores(p1 NUMBER
                    ,p2 NUMBER
                    ,operacao NUMBER) return number;
  PROCEDURE pr_insere_funcionario(pNome      VARCHAR2,
                                  pSobreNome VARCHAR2,
                                  pResult    OUT VARCHAR2);

END pkg_exemplo;
/
CREATE OR REPLACE PACKAGE BODY pkg_exemplo IS
  FUNCTION fc_soma_valores(p1 NUMBER, p2 NUMBER) return number IS
  BEGIN
    RETURN p1 + p2;
  
  END;

  FUNCTION fc_multiplica_valores(p1 NUMBER, p2 NUMBER) return number IS
  BEGIN
    RETURN p1 * p2;
  
  END;

  FUNCTION fc_computa_valores(p1 NUMBER, p2 NUMBER, operacao NUMBER)
    RETURN NUMBER IS
  BEGIN
    IF operacao = 1 THEN
      RETURN fc_soma_valores(p1
                            ,p2);
    ELSE
      RETURN fc_multiplica_valores(p1
                                  ,p2);
    END IF;
  
  END;
  PROCEDURE pr_insere_funcionario(pNome      VARCHAR2,
                                  pSobreNome VARCHAR2,
                                  pResult    OUT VARCHAR2) IS
  BEGIN
    pResult := pNome || ' ' || pSobreNome;
  END;


END pkg_exemplo;
/
