import { PrismaClient, Prisma } from '@prisma/client';

const prisma = new PrismaClient();

export default async function handler(req, res) {
  if (req.method === 'POST') {
    //Ask for team Team
    const team_check = await prisma.team.findFirst({
      where: { name: req.body.team.name }
    });
    if (team_check != null) {
      res.status(409)
      res.send("Error team already found!");
      return;
    }

    req.body.participants.map(async (item) => {
      const id_check = await prisma.team.findFirst({
        where: { name: req.body.participant.id }
      });
      const email_check = await prisma.team.findFirst({
        where: { name: req.body.participant.email }
      });
      const phone_check = await prisma.team.findFirst({
        where: { name: req.body.participant.email }
      });
      if (id_check != null||email_check != null||phone_check != null) {
        res.status(409)
        res.send("Error team already found!");
        return;
      }

      console.log(team);
    });

    // id_team Int
    // name String
    // pax Int (no necesario)
    //Save team

    //Ask for Participants 4
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
    const team = await prisma.team.create({ data: req.body.team });
    req.body.participants.map(async (item) => {
      item['team_id'] = team.id_team;
      item['ext'] = false;
      item['phone'] = String(item['phone']);
      const user = await prisma.participant.create({ data: item });
      console.log(user);
    });

    res.send(200);
  } else {
    console.log();
    res.send(404);
  }

  res.send();
}
