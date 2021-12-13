create or replace trigger tr_b_er_iu_region
  before insert or update
  on regions 
  for each row
declare
  v_acao varchar2(10);
begin
  if inserting then
    v_acao := 'INSERT';
  else
    v_acao := 'UPDATE';
  end if;
  dbms_output.put_line ('before each row id->' || :new.region_id || ' acao ' || v_acao );
end tr_b_er_iu_region;
/
