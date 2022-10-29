import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
  const result = await prisma.user.findUnique({
    where: {
      email: 'alice@prisma.io',
    },
  })
  console.log(result);
}

main()
  .then(async () => {
    await prisma.$disconnect()
  })
  .catch(async (e) => {
    console.error(e)
    console.log("error at prisma")
    await prisma.$disconnect()
    process.exit(1)
  })