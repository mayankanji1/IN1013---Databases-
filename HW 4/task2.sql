INSERT INTO petpet VALUES
    ('Hammy', 'Diane', 'hamster', 'M', '2010-10-30', NULL);
INSERT INTO petpet VALUES
    ("Fluffy", "Harold", "cat", "F", "1993-02-04", NULL);
INSERT INTO petpet VALUES
	("Claws", "Gwen", "cat", "M", "1994-03-17", NULL);
INSERT INTO petpet VALUES   
    ('Puffball','Diane','hamster','F','1999-03-30','1999-03-30');
    
update petpet SET death = "2020-09-01" where petname = "Puffball";
    
SET SQL_SAFE_UPDATES = 0;

DELETE FROM petpet where owner = "Harold";
    
INSERT INTO petevent (petname, eventdate, eventtype, remark) 
	VALUES
    ('Fluffy', '2020-10-15', 'vet', 'antibiotics'),
    ('Hammy', '2020-10-15', 'vet', 'antibiotics');
    
DELETE FROM petevent where petname = "Fluffy";
    
INSERT INTO petevent (petname, eventdate, eventtype, remark) 
	VALUES    
    ("Claws", "1997-08-03","birthday", "broke rib");
    
update petevent SET remark = "5 kittens, 3 female, 2 male" where petname = "Fluffy"