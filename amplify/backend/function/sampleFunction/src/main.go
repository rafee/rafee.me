package main

import (
	"context"
	"fmt"

	"github.com/aws/aws-lambda-go/lambda"
)

// MyEvent describes the incoming event
type MyEvent struct {
	Name string `json:"name"`
}

// HandleRequest handles MyEvent and generates appropriate response
func HandleRequest(ctx context.Context, name MyEvent) (string, error) {
	return fmt.Sprintf("Hello %s!", name.Name), nil
}

func main() {
	lambda.Start(HandleRequest)
}
