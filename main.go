package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()
	// userGroup = r.Group("user")
	r.GET("/", func(c *gin.Context) {
		c.JSON(http.StatusOK, gin.H{"Data": "Hallo Nama Saya Alen"})
	})
	r.Run()
}
