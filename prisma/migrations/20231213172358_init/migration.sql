-- CreateEnum
CREATE TYPE "payment_methods" AS ENUM ('PIX', 'CHIPS', 'MONEY');

-- CreateTable
CREATE TABLE "massages" (
    "id" SERIAL NOT NULL,
    "player_name" TEXT NOT NULL,
    "time" INTEGER NOT NULL,
    "payment_method" "payment_methods" NOT NULL,
    "total" DOUBLE PRECISION NOT NULL,
    "leader_total" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "massages_pkey" PRIMARY KEY ("id")
);
