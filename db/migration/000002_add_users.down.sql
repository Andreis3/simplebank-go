ALTER TABLE If EXISTS "accounts" DROP CONSTRAINT "ower_currency_key";
ALTER TABLE If EXISTS "accounts" DROP CONSTRAINT "accounts_owner_fkey";

DROP TABLE If EXISTS "users";
