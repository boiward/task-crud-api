package main

import (
    "github.com/gin-gonic/gin"
    "todo-api/config"
    "todo-api/handlers"
)

func main() {
    r := gin.Default()
    db := config.SetupDatabase()

    taskHandler := handlers.NewTaskHandler(db)

    api := r.Group("/api")
    {
        task := api.Group("/tasks")
        {
            task.GET("", taskHandler.GetTasks)
            task.GET(":id", taskHandler.GetTask)
            task.POST("", taskHandler.CreateTask)
            task.PUT(":id", taskHandler.UpdateTask)
            task.DELETE(":id", taskHandler.DeleteTask)
        }
    }

    r.Run(":8080")
}