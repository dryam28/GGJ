import { PrismaClient, Prisma } from '@prisma/client';

const prisma = new PrismaClient();

export default async function handler(req, res) {
  if (req.method === 'GET') {
    const id_check = await prisma.Participant.find();
    res.
    res.send(200);
  } else {
    console.log();
    res.send(404);
  }

  res.send();
}
