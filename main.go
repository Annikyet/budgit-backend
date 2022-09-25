package main

// import (
// 	"net/http"
// 	"github.com/gin-gonic/gin"
// 	"errors"
// )

type transaction struct {
	ID            int
	UserId        string
	BankAccountId int
	CategoryId    int
	Date          string // should be a date type... later
	Amount        int    // should be a decimal type... later
	Payee         string
	Description   string
}
