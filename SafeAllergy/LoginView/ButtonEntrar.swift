//
//  ButtonEntrar.swift
//  SafeAllergy
//
//  Created by Josimar da Cunha Ferreira on 10/12/24.
//

import SwiftUI
// Importa o framework SwiftUI, que permite criar interfaces de usuário de forma declarativa.

struct ButtonEntrar: View {
    // Define uma nova struct chamada 'ButtonEntrar', que representa um botão de login. Ela adota o protocolo 'View' para ser usada como parte da interface de usuário.

    // Declarando as variáveis de estado e binding que a view precisa.
    @Binding var userName: String
    // @Binding cria uma ligação com a variável 'userName' de fora da view, permitindo que a alteração do valor de 'userName' seja refletida fora dessa view.
    @Binding var userPwd: String
    // @Binding cria uma ligação com a variável 'userPwd', permitindo que a alteração seja refletida fora dessa view.
    @State var showAlert: Bool = false
    // Variável de estado 'showAlert' para controlar a exibição de um alerta, com valor inicial 'false'.

    var body: some View {
        // A propriedade 'body' define a interface da view, ou seja, o que será exibido na tela.
        
        // Criando o botão de login.
        Button("Entrar") {
            // Cria um botão com o texto "Entrar". A ação associada ao botão será executada quando ele for pressionado.
            if(userName.isEmpty || userPwd.isEmpty){
                // Verifica se o nome de usuário ou a senha estão vazios.
                showAlert = true
                // Se algum dos campos estiver vazio, ativa a variável 'showAlert', o que faz com que o alerta seja exibido.
            }
        }
        .alert("Preencha os campos corretamente", isPresented: $showAlert) {
            // Configura o alerta. Se 'showAlert' for verdadeiro, o alerta será mostrado com a mensagem "Preencha os campos corretamente".
            Button("Ok", role: .cancel) {}
            // Define um botão "Ok" no alerta. Quando pressionado, ele apenas fecha o alerta (não executa nenhuma ação adicional).
        }
        .padding(.top, 20)
        // Adiciona um preenchimento de 20 pontos no topo do botão para dar um pouco de espaço acima dele.
    }
}

#Preview {
    // O modificador #Preview permite que você visualize a interface da view diretamente no painel de pré-visualização do Xcode.
    ButtonEntrar(userName: .constant(""), userPwd: .constant(""))
    // Cria uma instância da view 'ButtonEntrar', passando valores de binding constantes (vazios) para 'userName' e 'userPwd' para fins de visualização no preview.
}
