//
//  SemContaEsqueci.swift
//  SafeAllergy
//
//  Created by Josimar da Cunha Ferreira on 10/12/24.
//

import SwiftUI
// Importa o framework SwiftUI, que é utilizado para construir interfaces de usuário.

struct SemContaEsqueci: View {
    // Define uma struct chamada 'SemContaEsqueci', que adota o protocolo 'View' e representa uma parte da interface de usuário.
    
    var body: some View {
        // Define o corpo da view, que é a parte visual que será renderizada na tela.
        
            HStack {
                VStack {
                    
                    // Primeiro botão que oferece a opção de criar uma nova conta.
                    Button("Não tem uma conta?") {
                        // Cria um botão com o texto "Não tem uma conta?".
                    }
                    NavigationLink(destination: Text("View Criar conta")) {
                        Text("Criar nova conta")
                        // Ação associada ao botão: quando o botão é pressionado, imprime no console a mensagem "Criar nova conta".
                    }
                    .font(.system(size: 9, weight: .light))
                    // Define a fonte do botão, com tamanho 9 e peso 'light', para deixar o texto mais discreto.
                    .foregroundColor(Color.red)
                    // Define a cor do texto do botão como vermelha.
                }
                
                VStack {
                    
                    // Segundo botão que oferece a opção de recuperar o login ou senha.
                    Button("Esqueci login/senha") {
                    // Cria um botão com o texto "Esqueci login/senha".
                    }
                    NavigationLink(destination: Text("View Recuperar conta")) {
                        Text("Resgatar login/senha")
                        // Ação associada ao botão: imprime "Resgatar login/senha" no console quando pressionado.
                    }
                    .font(.system(size: 9, weight: .light))
                    // Define a mesma fonte e estilo para o texto do segundo botão.
                    .foregroundColor(Color.red)
                    // Define a cor do texto como vermelha, igual ao primeiro botão.
                }
            }
            .padding(.top, 10)
            
        }

}

#Preview {
    // A diretiva #Preview é usada para visualizar a interface no painel de pré-visualização do Xcode.
    SemContaEsqueci()
    // Cria uma instância da view 'SemContaEsqueci' para visualizá-la no preview.
}
