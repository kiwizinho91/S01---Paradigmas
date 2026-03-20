use std::io;

fn eh_impar(numero: i32) -> bool {
    numero % 2 != 0
}

fn main() {
    let mut escolha = String::new();
    println!("Jogador 1, escolha par ou impar:");
    io::stdin().read_line(&mut escolha).expect("Erro ao ler");
    let escolha = escolha.trim().to_lowercase();

    let mut entrada1 = String::new();
    println!("Jogador 1, digite um numero:");
    io::stdin().read_line(&mut entrada1).expect("Erro ao ler");
    let numero1: i32 = entrada1.trim().parse().unwrap_or(0);

    let mut entrada2 = String::new();
    println!("Jogador 2, digite um numero:");
    io::stdin().read_line(&mut entrada2).expect("Erro ao ler");
    let numero2: i32 = entrada2.trim().parse().unwrap_or(0);

    let soma = numero1 + numero2;
    let resultado_impar = eh_impar(soma);

    println!("Soma dos numeros: {}", soma);

    if (escolha == "impar" || escolha == "ímpar") && resultado_impar {
        println!("O resultado foi impar. Jogador 1 venceu!");
    } else if escolha == "par" && !resultado_impar {
        println!("O resultado foi par. Jogador 1 venceu!");
    } else {
        println!("O resultado nao correspondeu a escolha do Jogador 1. Jogador 2 venceu!");
    }
}
