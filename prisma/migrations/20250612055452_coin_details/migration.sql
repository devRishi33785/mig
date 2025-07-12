-- CreateTable
CREATE TABLE "CoinDetails" (
    "id" TEXT NOT NULL,
    "coinId" TEXT NOT NULL,
    "chain" TEXT NOT NULL,
    "contractAddress" TEXT NOT NULL,
    "decimals" TEXT NOT NULL,

    CONSTRAINT "CoinDetails_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "CoinDetails" ADD CONSTRAINT "CoinDetails_coinId_fkey" FOREIGN KEY ("coinId") REFERENCES "Coins"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
