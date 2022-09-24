-- Active: 1663625309675@@147.182.242.232@3306@budgit
CREATE TABLE IF NOT EXISTS transactions(
  id INT NOT NULL PRIMARY KEY COMMENT 'transactionId',
  bankAccountId INT COMMENT 'bankAccountId this transaction is in',
  categoryId INT COMMENT 'categoryId this transaction is in',
  datePosted DATE NOT NULL COMMENT 'DATE this transaction was posted',
  amount DECIMAL(19,4) COMMENT 'amount of this transaction, positive is income',
  payee VARCHAR(255) COMMENT 'entity this transaction is with',
  description VARCHAR(255) COMMENT 'comments/notes/description'
) DEFAULT CHARSET utf8;

ALTER TABLE transactions
-- MODIFY COLUMN id INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'transactionId';
ADD userId VARCHAR(255) NOT NULL COMMENT 'userId this transaction belongs to';

CREATE TABLE IF NOT EXISTS categories(
  if NOT NULL PRIMARY KEY COMMENT 'categoryId',

)