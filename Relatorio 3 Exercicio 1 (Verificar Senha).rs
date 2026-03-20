use std::io;

fn verificar_senha(senha: &str) -> bool {
    let mut quantidade_numeros = 0;
    let mut tem_maiuscula = false;

    for c in senha.chars() {
        if c.is_digit(10) {
            quantidade_numeros += 1;
        }

        if c.is_ascii_uppercase() {
            tem_maiuscula = true;
        }
    }

    senha.len() >= 10 && quantidade_numeros >= 2 && tem_maiuscula
}

fn main() {
    loop {
        let mut entrada = String::new();
        println!("Digite uma senha:");
        io::stdin().read_line(&mut entrada).expect("Erro ao ler");

        let senha = entrada.trim();

        if verificar_senha(senha) {
            println!("A senha e valida, seja bem vindo!");
            break;
        } else {
            println!("Senha invalida. Tente novamente.");
        }
    }
}
