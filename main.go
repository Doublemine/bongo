package main

import (
	"fmt"

	"github.com/doublemine/bongo/cmd/bongo"
)

func main() {
	err := bongo.Execute()
	if err != nil {
		fmt.Println("execute error: ", err.Error())
	}
}
