


export class Category {
  constructor(
    id,
    userId,
    groupId,
    name,
    description,
    targetAmount,
    targetMax,
    targetInterval,
    targetFrequency,
    targetDate
  ) {
    this.id = id
    this.userId = userId
    this.groupId = groupId
    this.name = name
    this.description = description
    this.targetAmount = targetAmount
    this.targetMax = targetMax
    this.targetInterval = targetInterval
    this.targetFrequency = targetFrequency
    this.targetDate = targetDate
  }
}