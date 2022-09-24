CREATE TABLE IF NOT EXISTS transactions(
  id INT NOT NULL PRIMARY KEY COMMENT 'transactionId',
  bankAccountId INT COMMENT 'bankAccountId this transaction is in',
  categoryId INT COMMENT 'categoryId this transaction is in',
  datePosted DATE NOT NULL COMMENT 'DATE this transaction was posted',
  amount DECIMAL(7,2) COMMENT 'amount of this transaction, positive is income',
  payee VARCHAR(255) COMMENT 'entity this transaction is with',
  description VARCHAR(255) COMMENT 'comments/notes/description'
);