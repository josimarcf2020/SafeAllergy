//
//  IdentifiqueseLoginSenha.swift
//  SafeAllergy
//
//  Created by Josimar da Cunha Ferreira on 10/12/24.
//

import SwiftUI
// Importa o framework SwiftUI, que é utilizado para criar interfaces de usuário de maneira declarativa.

struct IdentifiqueseLoginSenha: View {
    // Define uma struct chamada 'IdentifiqueseLoginSenha', que representa uma tela ou seção da interface do usuário. Ela adota o protocolo 'View'.
    
    @Binding var userName: String
    // A variável 'userName' é do tipo 'Binding'. Isso significa que ela está ligada a um valor externo e as alterações feitas nela serão refletidas fora desta view.
    @Binding var userPwd: String
    // A variável 'userPwd' também é do tipo 'Binding', ligando-a a um valor externo, permitindo a alteração refletir fora da view.

    var body: some View {
        // A propriedade 'body' define o layout da view, ou seja, o que será exibido na tela.
        
        // Título "Identifique-se"
        Text("Identifique-se")
        // Cria um texto na tela com o conteúdo "Identifique-se".
            .font(.headline)
        // Aplica uma fonte de título de nível "headline" (mais destacado).
            .padding(.top, 30)
        // Adiciona um preenchimento de 30 pontos no topo, separando o título dos elementos acima dele.
        
        // Campo de texto para o nome de usuário
        TextField("Digite o seu LOGIN", text: $userName)
        // Cria um campo de texto onde o usuário pode digitar o nome de usuário. O texto digitado é ligado à variável 'userName'.
            .multilineTextAlignment(.center)
            // Alinha o texto inserido no centro do campo de texto.
            .autocapitalization(.none)
            // Desativa a autocapitalização, ou seja, o texto não será automaticamente capitalizado.
            .disableAutocorrection(true)
            // Desativa a correção automática, o que evita que o iOS altere o texto digitado.
            .padding(.top, 20)
            // Adiciona um preenchimento de 20 pontos no topo, criando um espaçamento entre o campo de texto e o título.

        // Campo de texto seguro para a senha
        SecureField("Digite a senha", text: $userPwd)
        // Cria um campo de entrada de senha (comster) onde os caracteres digitados são mascarados.
            .multilineTextAlignment(.center)
            // Alinha o texto inserido no centro do campo de texto.
            .padding(.top, 20)
            // Adiciona um preenchimento de 20 pontos no topo, criando um espaçamento entre o campo de senha e o campo de login.
    }
}

#Preview {
    // A diretiva #Preview permite visualizar a interface ao vivo no painel de pré-visualização do Xcode.
    IdentifiqueseLoginSenha(
        // Cria uma instância da view 'IdentifiqueseLoginSenha'.
        userName: .constant(""),
        // Passa uma ligação para o valor de 'userName', usando .constant("") para representar um valor vazio.
        userPwd: .constant("")
        // Passa uma ligação para o valor de 'userPwd', usando .constant("") para representar um valor vazio.
    )
}

