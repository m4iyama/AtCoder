package main

import (
	"fmt"
	"math"
)

func main() {
	var n, w int
	fmt.Scan(&n, &w)

	var ws, vs []int
	for i := 0; i < n; i++ {
		var ww, vv int
		fmt.Scan(&ww, &vv)
		ws = append(ws, ww)
		vs = append(vs, vv)
	}

	sumV := 0
	for _, v := range vs {
		sumV += v
	}

	dp := make([][]int, n)
	for i := 0; i < n; i++ {
		dp[i] = make([]int, sumV+1)
		for j := 0; j < sumV+1; j++ {
			dp[i][j] = math.MaxInt32
		}
	}
	// dp[i][j]: i番目までで価値jを実現するための最小重さ

	dp[0][0] = 0
	dp[0][vs[0]] = ws[0]

	for i := 1; i < n; i++ {
		for j := 0; j < sumV+1; j++ {
			if j-vs[i] >= 0 {
				dp[i][j] = int(math.Min(float64(dp[i-1][j]), float64(ws[i]+dp[i-1][j-vs[i]])))
			} else {
				dp[i][j] = dp[i-1][j]
			}
		}
	}

	maxV := 0
	for j, ww := range dp[n-1] {
		if ww <= w {
			maxV = j
		}
	}

	fmt.Println(maxV)
}
