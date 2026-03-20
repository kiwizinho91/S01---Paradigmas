use std::io;

fn calcular_media(nota1: f64, nota2: f64, nota3: f64) -> f64 {
    let npt = (nota1 + nota2) / 2.0;
    let npl = nota3;

    (npl * 0.3) + (npt * 0.7)
}

fn main() {
    let mut entrada1 = String::new();
    println!("Digite a nota da NP1:");
    io::stdin().read_line(&mut entrada1).expect("Erro ao ler");
    let nota1: f64 = entrada1.trim().parse().unwrap_or(0.0);

    let mut entrada2 = String::new();
    println!("Digite a nota da NP2:");
    io::stdin().read_line(&mut entrada2).expect("Erro ao ler");
    let nota2: f64 = entrada2.trim().parse().unwrap_or(0.0);

    let mut entrada3 = String::new();
    println!("Digite a nota da NPL:");
    io::stdin().read_line(&mut entrada3).expect("Erro ao ler");
    let nota3: f64 = entrada3.trim().parse().unwrap_or(0.0);

    let npt = (nota1 + nota2) / 2.0;
    let media_final = calcular_media(nota1, nota2, nota3);

    println!("NPT: {:.2}", npt);
    println!("Media final: {:.2}", media_final);

    if npt >= 60.0 && nota3 >= 60.0 {
        println!("Parabens! Voce foi aprovado.");
    } else {
        println!("Voce foi reprovado.");
    }
}
