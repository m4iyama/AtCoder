package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	r := bufio.NewReaderSize(os.Stdin, 200000)
	s, _, _ := r.ReadLine()

	if daydream(string(s)) {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}

func daydream(s string) bool {
	if s == "" {
		return true
	}

	if strings.HasPrefix(s, "dreamer") {
		return daydream(s[7:]) || daydream(s[5:])
	} else if strings.HasPrefix(s, "dream") {
		return daydream(s[5:])
	} else if strings.HasPrefix(s, "eraser") {
		return daydream(s[6:])
	} else if strings.HasPrefix(s, "erase") {
		return daydream(s[5:])
	}

	return false
}
