package main

import "fmt"

func ehTriangulo(x, y, z int) bool {
	if x+y <= z || x+z <= y || y+z <= x {
		return false
	}
	return true
}

func tipoTriangulo(x, y, z int) string {
	if x == y && y == z {
		return "Equilátero"
	} else if x == y || x == z || y == z {
		return "Isósceles"
	}
	return "Escaleno"
}

func main() {
	var l1, l2, l3 int

	fmt.Print("Lado 1: ")
	fmt.Scan(&l1)
	fmt.Print("Lado 2: ")
	fmt.Scan(&l2)
	fmt.Print("Lado 3: ")
	fmt.Scan(&l3)

	if ehTriangulo(l1, l2, l3) {
		fmt.Println("Classificação:", tipoTriangulo(l1, l2, l3))
	} else {
		fmt.Println("Não forma um triângulo.")
	}
}
