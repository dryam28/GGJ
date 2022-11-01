import { PrismaClient, Prisma } from '@prisma/client';

const prisma = new PrismaClient();

export default async function handler(req, res) {
  if (req.method === 'POST') {
    //Ask for team Team
    
    // id_team Int
    // name String
    // pax Int
    //Save team
    req. 
    //Ask for Participants
    // id String 
    // team_id Int
    // name String
    // institution String
    // !date DateTime @default(now())
    // phone Int
    // email String
    // area String
    // ext Boolean
    //Save Participants
    res.send(200);
  } else {
    console.log();
    res.send(404);
  }

  res.send();
}
