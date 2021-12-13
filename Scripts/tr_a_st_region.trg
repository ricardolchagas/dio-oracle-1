create or replace trigger tr_a_st_region
  after insert or update
  on regions 

begin
  dbms_output.put_line ('after statement');

end tr_a_st_region;
/
