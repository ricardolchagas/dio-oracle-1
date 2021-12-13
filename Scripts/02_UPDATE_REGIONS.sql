SELECT * FROM REGIONS;
select * from countries where region_id = 4 and country_id in ('IL', 'KW')
select * from regions  WHERE region_id > 2;



BEGIN
  UPDATE regions SET Region_Name = 'Africa' WHERE region_id = 4;

  INSERT INTO regions
    (region_id
    ,region_name)
  VALUES
    (5
    ,'Middle East');
    
  COMMIT;

END;

SELECT * FROM COUNTRIES WHERE REGION_ID = 4;


UPDATE COUNTRIES SET REGION_ID = 5 WHERE COUNTRY_ID in ('IL', 'KW')
