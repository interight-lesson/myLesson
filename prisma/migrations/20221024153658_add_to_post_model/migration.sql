/*
  Warnings:

  - You are about to drop the column `UserId` on the `Post` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_UserId_fkey";

-- AlterTable
ALTER TABLE "Post" DROP COLUMN "UserId",
ADD COLUMN     "authorId" INTEGER,
ALTER COLUMN "title" DROP NOT NULL,
ALTER COLUMN "title" SET DATA TYPE TEXT,
ALTER COLUMN "content" DROP NOT NULL;

-- AlterTable
ALTER TABLE "User" ALTER COLUMN "name" DROP NOT NULL;

-- DropEnum
DROP TYPE "Role";

-- AddForeignKey
ALTER TABLE "Post" ADD CONSTRAINT "Post_authorId_fkey" FOREIGN KEY ("authorId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
