//
//  Desempenho.swift
//  Iquiz
//
//  Created by icaro on 20/05/23.
//

import UIKit

class Desempenho: UIViewController {

    var pontuacao: Int?
    
    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var porcentualLabel: UILabel!
    
    @IBOutlet weak var botaoReiniciarQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarDesempenho()
    }
    func configurarLayout(){
        navigationItem.hidesBackButton = true
        botaoReiniciarQuiz.layer.cornerRadius = 12.0
    }
    func configurarDesempenho(){
        guard let pontuacao = pontuacao else { return }
        resultadoLabel.text = "Você acertou \(pontuacao) de \(questoes.count) questões"
        let percentual = (pontuacao * 100 / questoes.count)
        porcentualLabel.text = "Percentual final:\(percentual)%"
    }

}
