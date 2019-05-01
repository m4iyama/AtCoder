package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	dp := make([][]string, len(s)+1)
	for i := 0; i < len(s)+1; i++ {
		dp[i] = make([]string, len(t)+1)
	}

	for i := 0; i < len(s); i++ {
		for j := 0; j < len(t); j++ {
			if s[i] == t[j] {
				dp[i+1][j+1] = dp[i][j] + string(s[i])
			} else {
				if len(dp[i+1][j]) > len(dp[i][j+1]) {
					dp[i+1][j+1] = dp[i+1][j]
				} else {
					dp[i+1][j+1] = dp[i][j+1]
				}
			}
		}
	}

	if dp[len(s)][len(t)] == "" {
		fmt.Print("")
	} else {
		fmt.Println(dp[len(s)][len(t)])
	}
}
