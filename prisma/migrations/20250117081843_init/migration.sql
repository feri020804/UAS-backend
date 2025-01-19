-- CreateTable
CREATE TABLE "News" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "title" TEXT ,
    "description" TEXT,
    "content" TEXT,
    "published" BOOLEAN DEFAULT true,
    "image" TEXT,
    "url" TEXT,
    "publishedAt" DATETIME,
    "category" TEXT
);
