-- Active: 1663625309675@@147.182.242.232@3306@budgit
CREATE TABLE IF NOT EXISTS transactions(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'transactionId',
  userId VARCHAR(255) NOT NULL COMMENT 'userId this transaction belongs to',
  bankAccountId INT COMMENT 'bankAccountId this transaction is in',
  categoryId INT COMMENT 'categoryId this transaction is in',
  datePosted DATE NOT NULL COMMENT 'DATE this transaction was posted',
  amount DECIMAL(19,4) COMMENT 'amount of this transaction, positive is income',
  payee VARCHAR(255) COMMENT 'entity this transaction is with',
  description VARCHAR(255) COMMENT 'comments/notes/description'
) DEFAULT CHARSET utf8;

CREATE TABLE IF NOT EXISTS categories(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'categoryId',
  userId VARCHAR(255) NOT NULL COMMENT 'userId this category belongs to',
  groupId VARCHAR(255) COMMENT 'groupId this category belongs to',
  name VARCHAR(255) NOT NULL COMMENT 'category name',
  description VARCHAR(255) COMMENT 'category description',
  assignedAmount DECIMAL(19,4) DEFAULT 0 COMMENT 'amount assigned to this budget category',
  targetAmount DECIMAL(19,4) COMMENT 'amount that should be assigned to this category',
  targetMax DECIMAL(19,4) COMMENT 'maximum amount that should be assigned',
  targetInterval ENUM('days', 'months') COMMENT 'the unit that the target frequency is updated',
  targetFrequency INT COMMENT 'the frequency, in targetIntervals the target is updated',
  targetDate DATE COMMENT 'the date that the target is first updated'
) DEFAULT CHARSET utf8;

CREATE TABLE IF NOT EXISTS groups(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'groupId',
  userId VARCHAR(255) NOT NULL COMMENT 'userId this group belongs to',
  name VARCHAR(255) NOT NULL COMMENT 'group name',
  description VARCHAR(255) COMMENT 'group description'
) DEFAULT CHARSET utf8;

CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';

CREATE TABLE IF NOT EXISTS bankAccounts(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'bankAccountId',
  userId VARCHAR(255) NOT NULL COMMENT 'userId this account belongs to',
  name VARCHAR(255) NOT NULL COMMENT 'the name of this account',
  description VARCHAR(255) COMMENT 'description of this account'
)