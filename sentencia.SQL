1º SELECT * FROM INHABITANT
2º SELECT * FROM INHABITANT WHERE state = "friendly"
3º SELECT * FROM INHABITANT WHERE job= "weaponsmith" AND STATE = "friendly"
4º SELECT * FROM INHABITANT WHERE job LIKE '%smith' AND STATE ='friendly'
5º SELECT personid from inhabitant where name = 'Stranger'
6º SELECT gold from inhabitant where name = 'Stranger'
7º SELECT * from ITEM where owner IS null
8º UPDATE item SET owner = 20  WHERE OWNER is NULL
9º select * from item WHERE owner =20 
10º select * from inhabitant where state = 'friendly' and job = 'dealer' or job = 'merchant'
11º UPDATE item SET owner = 15  WHERE item = 'ring' or item = 'teapot'




SQL Mystery

1º select * from crime_scene_report 
where date = 20180115 and type = 'murder' and city = 'SQL City'
2º select * from person
where address_street_name = 'Northwestern Dr'
order by address_number desc limit 1
3º select * from person
where (name like 'Annabel%') and address_street_name = 'Franklin Ave'
4º select * from interview
inner join person on interview.person_id = person.id
where id = 16371
5º select * from interview i
inner join person p on i.person_id = p.id
where p.name = 'Morty Schapiro' 
6º select * from drivers_license dl 
inner join person p on dl.id = p.license_id
where dl.plate_number like 'H42W%'
7º   select * from drivers_license dl 
inner join person p on dl.id = p.license_id
inner join get_fit_now_member gm on gm.person_id = p.id
where dl.plate_number like '%H42W%' and gm.id like '48Z%' and membership_status = 'gold'
8º 



              

              