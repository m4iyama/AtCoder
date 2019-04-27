package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func gcd(arr2 []int) int {
	if arr2[1] == 0 {
		return arr2[0]
	}
	return gcd([]int{arr2[1], arr2[0] % arr2[1]})
}

func gcdAll(arr []int) int {
	switch len(arr) {
	case 1:
		return arr[0]
	case 2:
		return gcd(arr)
	default:
		var tmp []int
		for i := 0; i < len(arr); i += 2 {
			if i == len(arr)-1 {
				tmp = append(tmp, arr[i])
			} else {
				tmp = append(tmp, gcd(arr[i:i+2]))
			}
		}
		return gcdAll(tmp)
	}
}

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readLine() string {
	buf := make([]byte, 0, 1000000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func main() {
	readLine()
	_a := strings.Fields(readLine())
	var a []int
	for _, xs := range _a {
		x, _ := strconv.Atoi(xs)
		a = append(a, x)
	}

	var gcds []int
	for i := 0; i < len(a); i++ {
		var arr []int
		for j := 0; j < len(a); j++ {
			if j != i {
				arr = append(arr, a[j])
			}
		}
		gcds = append(gcds, gcdAll(arr))
	}

	maxGcd := 0
	for _, gcd := range gcds {
		if gcd > maxGcd {
			maxGcd = gcd
		}
	}
	fmt.Println(maxGcd)
}
