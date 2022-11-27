import { PrismaClient, Prisma } from '@prisma/client';

const prisma = new PrismaClient();

export default async function handler(req, res) {
  if (req.method === 'POST') {
    const id_check = await prisma.ParticipantNext.findFirst({
      where: { id: req.body.id }
    });

    if (id_check !== null) {
      res.send('Error kid already registered!');
      return;
    }
    const nexter = await prisma.ParticipantNext.create({ data: req.body });
    
    res.send(200);
  } else {
    console.log();
    res.send(404);
  }

  res.send();
}
