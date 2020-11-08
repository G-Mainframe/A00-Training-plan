select * from studentinfo;

delete from studentinfo where NAME LIKE 'T%';
delete from studentinfo where NAME LIKE 'S%';
delete from studentinfo where NAME LIKE 'd%';
COMMIT;
学生信息表
INSERT INTO STUDENTINFO( NO
                        ,NAME
                        ,SEX
                       )
VALUES ( :SNO
        ,:SNAME
        ,:SSEX
       )

错误信息表
select * from STUDENTERROR;

新增错误信息
INSERT INTO STUDENTERROR( ERRORCD,SQLCODE,ERRORMSG)
VALUES ( 10,1,'学号已经存在');




SELECT ERRORMSG            
FROM  STUDENTERROR         
WHERE ERRORCD = 10
