


export class Transaction {
  constructor(
    id,
    userId,
    bankAccountId,
    categoryId,
    date,
    amount,
    payee,
    description
  ) {
    this.id = id
    this.userId = userId
    this.bankAccountId = bankAccountId
    this.categoryId = categoryId
    this.date = date
    this.amount = amount
    this.payee = payee
    this.description = description
  }
}