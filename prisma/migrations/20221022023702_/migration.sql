-- CreateTable
CREATE TABLE "Participant" (
    "ci" TEXT NOT NULL PRIMARY KEY,
    "equipo" TEXT NOT NULL,
    "Nombre" TEXT NOT NULL,
    "institucion" TEXT NOT NULL,
    "fecha" DATETIME NOT NULL,
    "telefono" INTEGER NOT NULL,
    "correo" TEXT NOT NULL,
    "facultad" TEXT NOT NULL,
    "ext" BLOB NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Participant_ci_key" ON "Participant"("ci");
