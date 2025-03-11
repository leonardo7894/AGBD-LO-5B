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