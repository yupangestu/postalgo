package main

import (
	"fmt"

	"github.com/gin-gonic/gin"
	"github.com/yasaricli/gah"
)

func main() {
	r := gin.Default()
	r.GET("/ping", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "pong",
		})
	})
	fmt.Println("testing bro")
	api := r.Group("/api")
	{
		api.POST("/login", gah.LoginHandler)
		api.POST("/register", gah.RegisterHandler)
	}
	r.Run() // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")
}
