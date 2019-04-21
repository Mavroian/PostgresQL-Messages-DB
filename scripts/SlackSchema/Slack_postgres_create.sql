BEGIN TRANSACTION;
CREATE TABLE "Users" (
	"user_id" serial NOT NULL,
	"first_name" TEXT NOT NULL,
	"last_name" TEXT NOT NULL,
	"gender" varchar(1) NOT NULL,
	"date_of_birth" DATE NOT NULL,
	"address" varchar(100) NOT NULL,
	"password" varchar(10) NOT NULL UNIQUE,
	"isloged" BOOLEAN NOT NULL,
	"user_channel" TEXT NOT NULL,
	"user_workspace" TEXT NOT NULL,
	CONSTRAINT Users_pk PRIMARY KEY ("user_id")
);



CREATE TABLE "channel" (

	"id" serial NOT NULL UNIQUE,
	"channel" TEXT NOT NULL UNIQUE,
	"users_id" INTEGER NOT NULL UNIQUE,
	CONSTRAINT channel_pk PRIMARY KEY ("id")
);



CREATE TABLE "Workspace" (
	"id" serial NOT NULL,
	"users_id" INTEGER NOT NULL UNIQUE,
	"workspace" TEXT NOT NULL UNIQUE,
	CONSTRAINT Workspace_pk PRIMARY KEY ("id")
);


CREATE TABLE "Direct_message" (
	"id" serial NOT NULL,
	"direct_message" serial NOT NULL,
	CONSTRAINT Direct_message_pk PRIMARY KEY ("id")
);



ALTER TABLE "Users" ADD FOREIGN KEY ("user_channel") REFERENCES "channel"("channel");
ALTER TABLE "Users" ADD FOREIGN KEY ("user_workspace") REFERENCES "Workspace"("workspace");

ALTER TABLE "channel" ADD  FOREIGN KEY ("users_id") REFERENCES "Users"("user_id");

ALTER TABLE "Workspace" ADD  FOREIGN KEY ("users_id") REFERENCES "Users"("user_id");

ALTER TABLE "Direct_message" ADD  FOREIGN KEY ("id") REFERENCES "channel"("id");
ALTER TABLE "Direct_message" ADD  FOREIGN KEY ("direct_message") REFERENCES "channel"("id");

COMMIT;