/*
template prints "Hello World!"

Usage:

	template
*/
package main

import (
	"fmt"
	"template/internal/hello"
)

func main() {
	fmt.Println("main")
	fmt.Println(hello.Hello())
}
