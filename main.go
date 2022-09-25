package main

// import (
// 	"net/http"
// 	"github.com/gin-gonic/gin"
// 	"errors"
// )

type transaction struct {
	ID            int    `json:"id"`
	UserId        string `json:"userId"`
	BankAccountId int    `json:"bankAccountId"`
	CategoryId    int    `json:"categoryId"`
	Date          string `json:"date"`   // should be a date type... later
	Amount        int    `json:"amount"` // should be a decimal type... later
	Payee         string `json:"payee"`
	Description   string `json:"description"`
}
