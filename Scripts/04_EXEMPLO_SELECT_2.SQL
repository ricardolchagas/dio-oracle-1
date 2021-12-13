select pkg_exemplo.fc_computa_valores(p1 => 10,
                                            p2 => 20,
                                            operacao => :operacao);
end;


SELECT j.*
      ,pkg_exemplo.fc_computa_valores(min_salary
                                     ,max_salary
                                     ,1)
  FROM jobs j
  where 
pkg_exemplo.fc_computa_valores(min_salary
                                     ,max_salary
                                     ,1) < 10000
