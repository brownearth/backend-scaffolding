package routes

import (
	"github.com/EliKoenig/backend-scaffolding/internal/handlers"
	"github.com/gin-gonic/gin"
)

func SetupRoutes(router *gin.Engine) {
	router.GET("/api/v1/healthCheck", handlers.HealthCheck)
}
