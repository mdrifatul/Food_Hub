/*
  Warnings:

  - You are about to drop the column `categoryId` on the `meals` table. All the data in the column will be lost.
  - You are about to drop the `categories` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "meals" DROP CONSTRAINT "meals_categoryId_fkey";

-- DropIndex
DROP INDEX "meals_categoryId_idx";

-- AlterTable
ALTER TABLE "meals" DROP COLUMN "categoryId",
ADD COLUMN     "cuisine" TEXT,
ADD COLUMN     "dietaryPreferences" TEXT[];

-- DropTable
DROP TABLE "categories";
