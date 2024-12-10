//
//  ContentView.swift
//  SafeAllergy
//
//  Created by Josimar da Cunha Ferreira on 09/12/24.
//

import SwiftUI
import SwiftData
// Importando as bibliotecas necessárias para a construção de interfaces com SwiftUI e interações com banco de dados.

struct LoginView: View {
    // Definindo a estrutura da tela de login que implementa o protocolo 'View'.

    // Declaração de variáveis de estado para armazenar os dados inseridos pelo usuário.
    @State public var userName: String = ""
    // Variável que guarda o nome de usuário inserido.
    @State public var userPwd: String = ""
    // Variável que guarda a senha inserida.
    @State private var showAlert: Bool = false
    // Variável booleana para controlar a exibição de um alerta caso os campos estejam vazios.

    var body: some View {
        // Corpo da view que contém todos os elementos da interface.
        VStack {
            // 'VStack' empilha as views verticalmente, criando um layout em coluna.

            TitleImage()
            // Chamando uma subview que exibe o título e uma imagem.
            
            // Outro 'VStack' para empilhar os campos de login e senha de maneira centralizada.
            VStack(alignment: .center) {
                IdentifiqueseLoginSenha(userName: $userName, userPwd: $userPwd)
                // Subview onde os campos de login e senha passam as variáveis de estado via binding.
            }
            .padding()
            // Adicionando um espaçamento interno ao 'VStack' para que os campos não fiquem encostados nas bordas.

            ButtonEntrar(userName: $userName, userPwd: $userPwd)
            // Subview que representa o botão "Entrar", com a lógica de validação dos campos de usuário e senha, passando as variáveis de estado para a subview.

            // 'HStack' que coloca botões na horizontal. Neste caso, contém as opções de criar conta ou recuperar senha.
            HStack {
                SemContaEsqueci()
                // Subview com opções para "Não tem uma conta?" e "Esqueci a senha", com seus próprios botões.
            }

        }
        .background(Color.green.opacity(0.1))
        // Define o fundo da tela com uma cor verde suave, com 10% de opacidade.
    }
}

#Preview {
    // O modificador #Preview permite visualizar a interface da view no SwiftUI.
    LoginView()
    // Aqui estamos criando uma instância da nossa view LoginView para visualizá-la no Preview.
}
