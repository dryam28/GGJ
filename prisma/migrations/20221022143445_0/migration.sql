/*
  Warnings:

  - You are about to drop the column `Nombre` on the `Participant` table. All the data in the column will be lost.
  - You are about to drop the column `facultad` on the `Participant` table. All the data in the column will be lost.
  - Added the required column `centro` to the `Participant` table without a default value. This is not possible if the table is not empty.
  - Added the required column `nombre` to the `Participant` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Participant" (
    "ci" TEXT NOT NULL PRIMARY KEY,
    "equipo" TEXT NOT NULL,
    "nombre" TEXT NOT NULL,
    "institucion" TEXT NOT NULL,
    "fecha" DATETIME NOT NULL,
    "telefono" INTEGER NOT NULL,
    "correo" TEXT NOT NULL,
    "centro" TEXT NOT NULL,
    "ext" BLOB NOT NULL
);
INSERT INTO "new_Participant" ("ci", "correo", "equipo", "ext", "fecha", "institucion", "telefono") SELECT "ci", "correo", "equipo", "ext", "fecha", "institucion", "telefono" FROM "Participant";
DROP TABLE "Participant";
ALTER TABLE "new_Participant" RENAME TO "Participant";
CREATE UNIQUE INDEX "Participant_ci_key" ON "Participant"("ci");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
