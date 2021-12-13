create or replace trigger tr_b_st_region
  before insert or update
  on regions 
  
begin
  dbms_output.put_line ('before statement');
end tr_b_st_region;
/
