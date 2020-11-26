package main

import (
	"encoding/json"
	"net/http"

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
	"github.com/aws/aws-lambda-go/lambdacontext"
)

// Handler handles the ProxyRequest and generates ProxyResponse
func Handler(ctx lambdacontext.LambdaContext, req events.APIGatewayProxyRequest) (events.APIGatewayProxyResponse, error) {
	b, err := json.MarshalIndent(req, "", "  ")
	resp := events.APIGatewayProxyResponse{
		StatusCode: http.StatusOK,
		Body:       string(b),
	}
	return resp, err
}

func main() {
	lambda.Start(Handler)
}
