/*
  Warnings:

  - Added the required column `gender` to the `Participant` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Participant" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "gender" TEXT NOT NULL,
    "team_id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "institution" TEXT NOT NULL,
    "date" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "phone" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "area" TEXT NOT NULL,
    "ext" BOOLEAN NOT NULL,
    CONSTRAINT "Participant_team_id_fkey" FOREIGN KEY ("team_id") REFERENCES "Team" ("id_team") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Participant" ("area", "date", "email", "ext", "id", "institution", "name", "phone", "team_id") SELECT "area", "date", "email", "ext", "id", "institution", "name", "phone", "team_id" FROM "Participant";
DROP TABLE "Participant";
ALTER TABLE "new_Participant" RENAME TO "Participant";
CREATE UNIQUE INDEX "Participant_id_key" ON "Participant"("id");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
