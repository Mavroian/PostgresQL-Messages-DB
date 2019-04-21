BEGIN TRANSACTION; 
CREATE TABLE "Members" (
	"mem_id" serial NOT NULL,
	"first_name" text NOT NULL,
	"last_name" text NOT NULL,
	"date_of_birth" date NOT NULL,
	"gender"  varchar (1) NOT NULL,
	"town_of_origin" varchar (50) NOT NULL,
	CONSTRAINT Members_pk PRIMARY KEY ("mem_id")
);


CREATE TABLE "Type" (
	"id" serial NOT NULL,
	"member_id" INTEGER NOT NULL,
	"non_fiction" varchar(50) NOT NULL,
	"biographies " varchar(50) NOT NULL,
	"fiction" varchar(50) NOT NULL,
	"everybody" varchar(50) NOT NULL,
	CONSTRAINT Type_pk PRIMARY KEY ("member_id")
);



CREATE TABLE "Checkins" (
	"check_id" serial NOT NULL,
	"memeber_id" INTEGER NOT NULL,
	"checkIn_date" date NOT NULL DEFAULT 'now()',
	"checkOut_date" date NOT NULL,
	CONSTRAINT Checkins_pk PRIMARY KEY ("check_id")
);



CREATE TABLE "Books" (
	"book_id" serial NOT NULL,
	"book_type_id" INTEGER NOT NULL,
	CONSTRAINT Books_pk PRIMARY KEY ("book_id")
);





ALTER TABLE "Checkins" ADD CONSTRAINT "Checkins_fk0" FOREIGN KEY ("memeber_id") REFERENCES "Members"("mem_id");

ALTER TABLE "Books" ADD CONSTRAINT "Books_fk0" FOREIGN KEY ("book_id") REFERENCES "Type"("member_id");
ALTER TABLE "Books" ADD CONSTRAINT "Books_fk1" FOREIGN KEY ("book_type_id") REFERENCES "Members"("mem_id");
COMMIT;
