import { PrismaClient, Prisma } from '@prisma/client';

const prisma = new PrismaClient();

export default async function handler(req, res) {
  if (req.method === 'POST') {
    const id_check = await prisma.participant.findFirst({
      where: { id: req.body.id }
    });

    if (id_check !== null) {
      return true;
    }
    const user = await prisma.participant.create({ data: item })
    res.send(200);
  } else {
    console.log();
    res.send(404);
  }

  res.send();
}
