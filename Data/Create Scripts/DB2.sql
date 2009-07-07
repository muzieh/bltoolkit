DROP TABLE "Person"
GO

CREATE TABLE "Person"
( 
	"PersonID"   INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
	"FirstName"  VARCHAR(50) NOT NULL,
	"LastName"   VARCHAR(50) NOT NULL,
	"MiddleName" VARCHAR(50),
	"Gender"     CHAR(1)     NOT NULL
)
GO

INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('John',   'Pupkin',    'M')
GO
INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('Tester', 'Testerson', 'M')
GO



DROP TABLE "Parent"
GO
DROP TABLE "Child"
GO
DROP TABLE "GrandChild"
GO

CREATE TABLE "Parent"      ("ParentID" int)
GO
CREATE TABLE "Child"       ("ParentID" int, "ChildID" int)
GO
CREATE TABLE "GrandChild"  ("ParentID" int, "ChildID" int, "GrandChildID" int)
GO

INSERT INTO "Parent"     VALUES (1)
GO
INSERT INTO "Child"      VALUES (1,11)
GO
INSERT INTO "GrandChild" VALUES (1,11,111)
GO

INSERT INTO "Parent"     VALUES (2)
GO
INSERT INTO "Child"      VALUES (2,21)
GO
INSERT INTO "GrandChild" VALUES (2,21,211)
GO
INSERT INTO "GrandChild" VALUES (2,21,212)
GO
INSERT INTO "Child"      VALUES (2,22)
GO
INSERT INTO "GrandChild" VALUES (2,22,221)
GO
INSERT INTO "GrandChild" VALUES (2,22,222)
GO

INSERT INTO "Parent"     VALUES (3)
GO
INSERT INTO "Child"      VALUES (3,31)
GO
INSERT INTO "GrandChild" VALUES (3,31,311)
GO
INSERT INTO "GrandChild" VALUES (3,31,312)
GO
INSERT INTO "GrandChild" VALUES (3,31,313)
GO
INSERT INTO "Child"      VALUES (3,32)
GO
INSERT INTO "GrandChild" VALUES (3,32,321)
GO
INSERT INTO "GrandChild" VALUES (3,32,322)
GO
INSERT INTO "GrandChild" VALUES (3,32,323)
GO
INSERT INTO "Child"      VALUES (3,33)
GO
INSERT INTO "GrandChild" VALUES (3,33,331)
GO
INSERT INTO "GrandChild" VALUES (3,33,332)
GO
INSERT INTO "GrandChild" VALUES (3,33,333)
GO

INSERT INTO "Parent"     VALUES (4)
GO
INSERT INTO "Child"      VALUES (4,41)
GO
INSERT INTO "GrandChild" VALUES (4,41,411)
GO
INSERT INTO "GrandChild" VALUES (4,41,412)
GO
INSERT INTO "GrandChild" VALUES (4,41,413)
GO
INSERT INTO "GrandChild" VALUES (4,41,414)
GO
INSERT INTO "Child"      VALUES (4,42)
GO
INSERT INTO "GrandChild" VALUES (4,42,421)
GO
INSERT INTO "GrandChild" VALUES (4,42,422)
GO
INSERT INTO "GrandChild" VALUES (4,42,423)
GO
INSERT INTO "GrandChild" VALUES (4,42,424)
GO
INSERT INTO "Child"      VALUES (4,43)
GO
INSERT INTO "Child"      VALUES (4,44)
GO

INSERT INTO "Parent"     VALUES (5)
GO
