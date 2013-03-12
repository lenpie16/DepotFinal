use bddemployes;
SET FOREIGN_KEY_CHECKS = 0;

# ================
# table projet
# ================
delete from projet;
insert into projet values ('PR1','Anciens combattants',3);                            
insert into projet values ('PR2','Paye ADCV',6);                         
insert into projet values ('PR3','Pensions',2);                             
insert into projet values ('PR4','Refonte base pieces',8);
insert into projet values ('PR5','Miroiterie Bonnet',6);

# ================
# table employeinformaticien
# ================


insert into employeinformaticien values (1,'DUPONT','Pierre','10/02/1970',8000,1000,'PR1');                                                                            
insert into employeinformaticien  values (2,'JOLIBOIS','Rolland','10/04/1960',10500,1500,'PR2');                                                                            
insert into employeinformaticien  values (3,'BEAUMONT','Jean','10/12/1972',12000,2000,'PR1');                                                                           
insert into employeinformaticien  values (4,'DUCHATEL','Mireille','10/02/1970',11500,3000,'PR2');                                                                            
insert into employeinformaticien  values (5,'MARTIN','Robert','10/02/1970',13000,0,'PR3');                                                                         
insert into employeinformaticien  values (6,'MAZAUD','Patricia','10/02/1970',13000,1500,'PR3'); 
insert into employeinformaticien  values (7,'GIMOND','Antoine','10/02/1970',21000,null,null);                                                                            
insert into employeinformaticien  values (8,'SAULT','Jean','10/02/1970',21200,null,null);                                                                            
insert into employeinformaticien  values (9,'GALLI','Jean Daniel','10/02/1970',10000,2000,'PR2');
insert into employeinformaticien  values (10,'JACONO','Marie','10/02/1970',11500,1500,'PR5');                                                                            
insert into employeinformaticien  values (11,'ANTHONY','Henri','10/02/1970',9500,0,'PR2');                                                                            
insert into employeinformaticien  values (12,'CANE','Michel','10/02/1970',10800,1400,'PR1');                                                                            
insert into employeinformaticien  values (13,'GOMEZ','Joseph','10/02/1970',7500,2000,'PR3');                                                                            
insert into employeinformaticien  values (14,'RIVIERE','Maurice','10/12/1970',23000,null,null);                                                                            
insert into employeinformaticien  values (15,'RUSSOT','Eric','23/02/1970',30000,null,null);
insert into employeinformaticien  values (16,'BERNARDI','Patrick','10/02/1970',9800,2500,'PR2');                                                                            
insert into employeinformaticien  values (17,'BEUGNIES','Maurice','13/02/1980',10800,2400,'PR1');                                                                            
insert into employeinformaticien  values (18,'FARNY','Daniel','12/08/1984',11500,1700,'PR5');                                                                            
insert into employeinformaticien  values (19,'ESTIVAL','Sophie','B17',12000,1000,'PR4');                                                                            
insert into employeinformaticien  values (20,'LUNEAU','Henri','10/02/1970',22500,null,null);                                                                            
insert into employeinformaticien  values (21,'BRESSON','Pierre','10/02/1980',14000,null,null);
#alter table employeinformaticien enable constraint FK_employeinformaticien_employeinformaticien ;


insert into employenoninformaticien values (1,'DUPARDON','Pierre','10/02/1988',8000,1000);                                                                            
insert into employenoninformaticien  values (2,'JOLI','Edouard','10/04/1966',10500,1500);                                                                            
insert into employenoninformaticien  values (3,'BEAU','Jean','30/12/1972',12000,2000);                                                                           
insert into employenoninformaticien  values (4,'CHATEL','Myriam','12/02/1979',11500,3000);                                                                            
insert into employenoninformaticien  values (5,'MARTEL','Jean','10/02/1970',13000,0);                                                                         
insert into employenoninformaticien  values (6,'RAMEL','Alicia','10/04/1970',13000,1500); 
insert into employenoninformaticien  values (7,'GAROU','Alex','17/02/1970',21000,null);                                    
SET FOREIGN_KEY_CHECKS = 1;
#commit;