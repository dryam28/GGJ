/*
  Warnings:

  - You are about to drop the column `responsiblePhone` on the `ParticipantNext` table. All the data in the column will be lost.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_ParticipantNext" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "age" INTEGER NOT NULL DEFAULT 7,
    "institution" TEXT NOT NULL,
    "responsible" TEXT NOT NULL,
    "responsibleId" TEXT NOT NULL,
    "phone" TEXT,
    "date" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "email" TEXT NOT NULL,
    "ext" BOOLEAN NOT NULL DEFAULT false
);
INSERT INTO "new_ParticipantNext" ("age", "date", "email", "ext", "id", "institution", "name", "responsible", "responsibleId") SELECT "age", "date", "email", "ext", "id", "institution", "name", "responsible", "responsibleId" FROM "ParticipantNext";
DROP TABLE "ParticipantNext";
ALTER TABLE "new_ParticipantNext" RENAME TO "ParticipantNext";
CREATE UNIQUE INDEX "ParticipantNext_id_key" ON "ParticipantNext"("id");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
