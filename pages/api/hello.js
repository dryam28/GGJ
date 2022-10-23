// Next.js API route support: https://nextjs.org/docs/api-routes/introduction
// export default function handler(req, res) {
//   res.status(200).json({ name: 'John Doe' })
// }

import { PrismaClient, Prisma } from '@prisma/client';

const prisma = new PrismaClient();

export default async function handler(req, res) {
  
  // const user = await prisma.participant.create({
  //   data: {
  //     equipo: 'Ivory Gate',
  //     nombre: 'Yoandy Paz Perdigón',
  //     ci: '96110804843',
  //     institucion: 'UCI',
  //     telefono: 52088009,
  //     correo: 'yperdigon@uci.cu',
  //     centro: 'F4-CTI-VERTEX',
  //     ext: false
  //   }
  // });

  res.send();
}
