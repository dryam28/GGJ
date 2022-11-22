/*
  Warnings:

  - The primary key for the `Participant` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `centro` on the `Participant` table. All the data in the column will be lost.
  - You are about to drop the column `ci` on the `Participant` table. All the data in the column will be lost.
  - You are about to drop the column `correo` on the `Participant` table. All the data in the column will be lost.
  - You are about to drop the column `equipo` on the `Participant` table. All the data in the column will be lost.
  - You are about to drop the column `fecha` on the `Participant` table. All the data in the column will be lost.
  - You are about to drop the column `institucion` on the `Participant` table. All the data in the column will be lost.
  - You are about to drop the column `nombre` on the `Participant` table. All the data in the column will be lost.
  - You are about to drop the column `telefono` on the `Participant` table. All the data in the column will be lost.
  - You are about to alter the column `ext` on the `Participant` table. The data in that column could be lost. The data in that column will be cast from `Binary` to `Boolean`.
  - Added the required column `area` to the `Participant` table without a default value. This is not possible if the table is not empty.
  - Added the required column `email` to the `Participant` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id` to the `Participant` table without a default value. This is not possible if the table is not empty.
  - Added the required column `institution` to the `Participant` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `Participant` table without a default value. This is not possible if the table is not empty.
  - Added the required column `phone` to the `Participant` table without a default value. This is not possible if the table is not empty.
  - Added the required column `team_id` to the `Participant` table without a default value. This is not possible if the table is not empty.

*/
-- CreateTable
CREATE TABLE "Team" (
    "id_team" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "desc" TEXT NOT NULL,
    "pax" INTEGER NOT NULL DEFAULT 4
);

-- CreateTable
CREATE TABLE "ParticipantNext" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "responsible" TEXT NOT NULL,
    "responsibleId" TEXT NOT NULL,
    "responsiblePhone" INTEGER NOT NULL,
    "institution" TEXT NOT NULL,
    "date" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "email" TEXT NOT NULL,
    "ext" BOOLEAN NOT NULL
);

-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Participant" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "team_id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "institution" TEXT NOT NULL,
    "date" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "phone" INTEGER NOT NULL,
    "email" TEXT NOT NULL,
    "area" TEXT NOT NULL,
    "ext" BOOLEAN NOT NULL,
    CONSTRAINT "Participant_team_id_fkey" FOREIGN KEY ("team_id") REFERENCES "Team" ("id_team") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Participant" ("ext") SELECT "ext" FROM "Participant";
DROP TABLE "Participant";
ALTER TABLE "new_Participant" RENAME TO "Participant";
CREATE UNIQUE INDEX "Participant_id_key" ON "Participant"("id");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;

-- CreateIndex
CREATE UNIQUE INDEX "ParticipantNext_id_key" ON "ParticipantNext"("id");
