package main

import (
	"github.com/EliKoenig/backend-scaffolding/internal/routes"
	"github.com/gin-gonic/gin"
	"log"
)

func main() {
	log.Println("starting server on 8080")
	router := gin.Default()
	routes.SetupRoutes(router)
	router.Run(":8080")
}
