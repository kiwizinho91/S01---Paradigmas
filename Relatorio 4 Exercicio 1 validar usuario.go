package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func validarAcesso(user, pass string) bool {
	return user == "admin" && pass == "1234"
}

func main() {
	reader := bufio.NewReader(os.Stdin)

	for {
		fmt.Print("Usuário: ")
		u, _ := reader.ReadString('\n')
		u = strings.TrimSpace(u)

		fmt.Print("Senha: ")
		p, _ := reader.ReadString('\n')
		p = strings.TrimSpace(p)

		if validarAcesso(u, p) {
			fmt.Println("Acesso permitido!")
			break
		} else {
			fmt.Println("Dados inválidos, tente novamente.")
		}
	}
}
