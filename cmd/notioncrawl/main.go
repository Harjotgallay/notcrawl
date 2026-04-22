package main

import (
	"fmt"
	"os"
)

func main() {
	if len(os.Args) > 1 && (os.Args[1] == "-h" || os.Args[1] == "--help") {
		fmt.Print("Usage of notioncrawl:\n  notioncrawl [global flags] <command> [args]\n")
		return
	}
	fmt.Fprintln(os.Stderr, "notioncrawl: implementation in progress")
	os.Exit(2)
}
