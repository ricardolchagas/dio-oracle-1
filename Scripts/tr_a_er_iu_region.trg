create or replace trigger tr_a_er_iu_region
  after insert or update
  on regions 
  for each row
begin
   dbms_output.put_line ('after each row id->' || :new.region_id );

end tr_a_er_iu_region;
/
