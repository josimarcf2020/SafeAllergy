//
//  TitleImage.swift
//  SafeAllergy
//
//  Created by Josimar da Cunha Ferreira on 10/12/24.
//

import SwiftUI
// Importa o framework SwiftUI, utilizado para criar interfaces de usuário de forma declarativa.

struct TitleImage: View {
    // Define a struct 'TitleImage' que representa uma view. Ela adota o protocolo 'View', o que significa que ela pode ser usada para exibir conteúdo na tela.

    var body: some View {
        // A propriedade 'body' define o layout da view, ou seja, o conteúdo que será exibido na interface do usuário.

        // Exibe o título "SafeAllergy" com formatação
        Text("SafeAllergy")
        // Cria uma view de texto com a string "SafeAllergy".
            .font(.largeTitle)
            // Aplica o estilo de fonte 'largeTitle', que é uma fonte grande, normalmente usada para títulos importantes.
            .padding(.top, 20)
            // Adiciona um espaçamento (padding) de 20 pontos no topo, separando o texto de outros elementos acima dele.

        // Exibe uma imagem, que é redimensionada e estilizada
        Image(.safeAllergyCapa)
        // Cria uma view de imagem, usando o recurso 'safeAllergyCapa'. Espera-se que 'safeAllergyCapa' seja uma imagem presente nos assets do projeto.
            .resizable()
            // Permite que a imagem seja redimensionada, ajustando seu tamanho conforme o layout.
            .aspectRatio(contentMode: .fit)
            // Mantém a proporção da imagem enquanto ajusta seu tamanho para se ajustar ao espaço disponível. A imagem será ajustada para caber na área, mas sem distorção.
            .clipShape(RoundedRectangle(cornerRadius: 25))
            // Aplica um formato arredondado à imagem, com bordas de raio 25 pontos. Isso cria um efeito visual de imagem com bordas suavemente arredondadas.
            .padding(.top, 20)
            // Adiciona um espaçamento de 20 pontos no topo da imagem, criando uma separação em relação ao texto acima dela.
            .padding()
            // Aplica preenchimento (padding) adicional ao redor da imagem, criando uma margem uniforme em todos os lados da imagem, para evitar que ela fique colada nas bordas.

    }
}

#Preview {
    // A diretiva #Preview permite que você visualize a interface no painel de pré-visualização do Xcode.
    TitleImage()
    // Cria uma instância da view 'TitleImage' para visualização no Xcode Preview.
}

