//
//  Questoes.swift
//  Iquiz
//
//  Created by icaro on 20/05/23.
//

import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    var respostaCerta: Int
}

let questoes: [Questao] = [
Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter? ", respostas: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], respostaCerta: 2),
Questao(titulo: "Quando foi lançado o filme Avatar 2? ", respostas: ["2014", "2022", "2023"], respostaCerta: 1),
Questao(titulo: "Quando foi lançado o filme Vingadores Ultimato?", respostas: ["2019", "2018", "2017"], respostaCerta: 0),
Questao(titulo: "Qual filme ganhou o Oscar de Melhor Filme em 2020?", respostas: ["Parasita", "Coringa", "1917"], respostaCerta: 0),
Questao(titulo: "Qual foi o primeiro filme da Marvel a ser lançado?", respostas: ["Thor", "O Incrível Hulk", "Homem de Ferro"], respostaCerta: 2),
Questao(titulo: "Qual filme dirigido por Christopher Nolan envolve viagens no tempo?", respostas: ["A Origem", "Interestelar", "Dunkirk"], respostaCerta: 0),
Questao(titulo: "Qual é o nome do robô protagonista do filme de animação da Pixar de 2008?", respostas: ["R2-D2", "WALL-E", "Eve"], respostaCerta: 1),
Questao(titulo: "Qual é o filme de Quentin Tarantino que se passa no Velho Oeste?", respostas: ["Django Livre", "Os Oito Odiados", "Era Uma Vez em... Hollywood"], respostaCerta: 0),
Questao(titulo: "Qual é o nome do personagem interpretado por Keanu Reeves na franquia Matrix?", respostas: ["Trinity", "Morpheus", "Neo"], respostaCerta: 2),
Questao(titulo: "Qual filme de Quentin Tarantino conta a história de dois assassinos de aluguel?", respostas: ["Kill Bill: Volume 1", "Pulp Fiction: Tempo de Violência", "Cães de Aluguel"], respostaCerta: 1)
]
