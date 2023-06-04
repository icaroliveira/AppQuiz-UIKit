//
//  tela2.swift
//  Iquiz
//
//  Created by icaro on 20/05/23.
//

import UIKit

extension UIColor {
    static var corDeFundoVerde = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
    static var corDeFundoVermelho = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
}

class tela2: UIViewController {

    var pontuacao = 0
    var numeroQuestao = 0
    
    @IBOutlet weak var primeiraPergunta: UILabel!
    @IBOutlet var botaoresposta: [UIButton]!
    
    @IBAction func botaoRespostaPressionado(_ sender: UIButton) {
        let usuarioAcertouResposta = questoes[numeroQuestao].respostaCerta == sender.tag
        if usuarioAcertouResposta {
            pontuacao += 1
            sender.backgroundColor = UIColor.corDeFundoVerde
        } else {
            sender.backgroundColor = UIColor.corDeFundoVermelho
        }
        if numeroQuestao < questoes.count - 1{
            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(configurarquestao), userInfo: nil, repeats: false)
        } else{
            navegaParaTelaDesempenho()
        }
    }
    
    func navegaParaTelaDesempenho(){
        performSegue(withIdentifier:"irParaTelaDesempenho", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarquestao()
    }
    
    func configurarLayout(){
        navigationItem.hidesBackButton = true
        primeiraPergunta.numberOfLines = 0
        primeiraPergunta.textAlignment = .center
        primeiraPergunta.textColor = .white
        for botao in botaoresposta{
            botao.layer.cornerRadius = 12.0
        }
    }
    
    @objc func configurarquestao(){
        primeiraPergunta.text = questoes[numeroQuestao].titulo
        for botao in botaoresposta{
            let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
            botao.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as?
                Desempenho else { return }
        desempenhoVC.pontuacao = pontuacao
    }
}
