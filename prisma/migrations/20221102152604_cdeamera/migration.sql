/*
  Warnings:

  - You are about to drop the column `pax` on the `Team` table. All the data in the column will be lost.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_ParticipantNext" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "responsible" TEXT NOT NULL,
    "responsibleId" TEXT NOT NULL,
    "responsiblePhone" INTEGER NOT NULL,
    "institution" TEXT NOT NULL,
    "date" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "email" TEXT NOT NULL,
    "ext" BOOLEAN NOT NULL DEFAULT false
);
INSERT INTO "new_ParticipantNext" ("date", "email", "ext", "id", "institution", "name", "responsible", "responsibleId", "responsiblePhone") SELECT "date", "email", "ext", "id", "institution", "name", "responsible", "responsibleId", "responsiblePhone" FROM "ParticipantNext";
DROP TABLE "ParticipantNext";
ALTER TABLE "new_ParticipantNext" RENAME TO "ParticipantNext";
CREATE UNIQUE INDEX "ParticipantNext_id_key" ON "ParticipantNext"("id");
CREATE TABLE "new_Team" (
    "id_team" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "desc" TEXT NOT NULL
);
INSERT INTO "new_Team" ("desc", "id_team", "name") SELECT "desc", "id_team", "name" FROM "Team";
DROP TABLE "Team";
ALTER TABLE "new_Team" RENAME TO "Team";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
