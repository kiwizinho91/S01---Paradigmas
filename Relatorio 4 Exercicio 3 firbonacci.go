package main

import "fmt"

func gerarFibonacci(qtd int) {
	if qtd < 1 {
		fmt.Println("Valor inválido.")
		return
	}

	a, b := 0, 1

	for i := 1; i <= qtd; i++ {
		if i == 1 {
			fmt.Print(a)
		} else if i == 2 {
			fmt.Print(" ", b)
		} else {
			prox := a + b
			fmt.Print(" ", prox)
			a = b
			b = prox
		}
	}
	fmt.Println()
}

func main() {
	var quantidade int
	fmt.Print("Informe a quantidade de termos: ")
	fmt.Scan(&quantidade)

	gerarFibonacci(quantidade)
}
