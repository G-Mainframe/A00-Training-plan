select * from studentinfo;

delete from studentinfo where NAME LIKE 'T%';
delete from studentinfo where NAME LIKE 'S%';
delete from studentinfo where NAME LIKE 'd%';
COMMIT;
ѧ����Ϣ��
INSERT INTO STUDENTINFO( NO
                        ,NAME
                        ,SEX
                       )
VALUES ( :SNO
        ,:SNAME
        ,:SSEX
       )

������Ϣ��
select * from STUDENTERROR;

����������Ϣ
INSERT INTO STUDENTERROR( ERRORCD,SQLCODE,ERRORMSG)
VALUES ( 10,1,'ѧ���Ѿ�����');




SELECT ERRORMSG            
FROM  STUDENTERROR         
WHERE ERRORCD = 10
