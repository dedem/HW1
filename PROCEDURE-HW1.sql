--------------------------------------------------------
--  File created - �ar�amba-May�s-04-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure SET_MANAGER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."SET_MANAGER" 
(
  DEP_ID in departments.department_id%type
, MAN_ID IN departments.manager_id%type 
) AS 
BEGIN
  UPDATE departments SET manager_�d=MAN_ID WHERE department_�d = dep_�d;
 
END SET_MANAGER;

/
