/*
  Warnings:

  - Made the column `category` on table `News` required. This step will fail if there are existing NULL values in that column.
  - Made the column `content` on table `News` required. This step will fail if there are existing NULL values in that column.
  - Made the column `description` on table `News` required. This step will fail if there are existing NULL values in that column.
  - Made the column `publishedAt` on table `News` required. This step will fail if there are existing NULL values in that column.
  - Made the column `title` on table `News` required. This step will fail if there are existing NULL values in that column.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_News" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "published" BOOLEAN NOT NULL DEFAULT true,
    "image" TEXT,
    "url" TEXT,
    "publishedAt" DATETIME NOT NULL,
    "category" TEXT NOT NULL
);
INSERT INTO "new_News" ("category", "content", "description", "id", "image", "published", "publishedAt", "title", "url") SELECT "category", "content", "description", "id", "image", coalesce("published", true) AS "published", "publishedAt", "title", "url" FROM "News";
DROP TABLE "News";
ALTER TABLE "new_News" RENAME TO "News";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
