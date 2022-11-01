import { PrismaClient, Prisma } from '@prisma/client';

const prisma = new PrismaClient();

export default async function handler(req, res) {
  if (req.method === 'POST') {
    //Ask for team
    //Save team
    //Ask for Participants
    //Save Participants
    res.send(200);
  } else {
    console.log();
    res.send(404);
  }

  res.send();
}