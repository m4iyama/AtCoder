package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	if !sc.Scan() {
		os.Exit(1)
	}

	numStr := sc.Text()
	a, _ := strconv.Atoi(string(numStr[0]))
	b, _ := strconv.Atoi(string(numStr[1]))

	fmt.Println(a + b)
}
