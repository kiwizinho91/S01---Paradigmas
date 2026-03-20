use std::io;

fn imprimir_multiplos(numero: i32, limite_inferior: i32, limite_superior: i32) {
    for i in limite_inferior..=limite_superior {
        if i % numero == 0 {
            println!("{}", i);
        }
    }
}

fn main() {
    let mut entrada_numero = String::new();
    println!("Digite o numero da tabuada:");
    io::stdin().read_line(&mut entrada_numero).expect("Erro ao ler");
    let numero: i32 = entrada_numero.trim().parse().unwrap_or(1);

    let mut entrada_inferior = String::new();
    println!("Digite o limite inferior:");
    io::stdin().read_line(&mut entrada_inferior).expect("Erro ao ler");
    let limite_inferior: i32 = entrada_inferior.trim().parse().unwrap_or(0);

    let mut entrada_superior = String::new();
    println!("Digite o limite superior:");
    io::stdin().read_line(&mut entrada_superior).expect("Erro ao ler");
    let limite_superior: i32 = entrada_superior.trim().parse().unwrap_or(0);

    println!("Multiplos de {} entre {} e {}:", numero, limite_inferior, limite_superior);
    imprimir_multiplos(numero, limite_inferior, limite_superior);
}
