#!/bin/bash

# Criar diretório base do projeto
mkdir -p iphone-project

# Entrar no diretório do projeto
cd iphone-project

# Criar estrutura de diretórios padrão Maven
mkdir -p src/main/java/com/{reprodutor/interfaces,telefone/interfaces,internet/interfaces,dispositivo}

# Criar arquivo ReprodutorMusical.java
cat > src/main/java/com/reprodutor/interfaces/ReprodutorMusical.java << 'EOF'
package com.reprodutor.interfaces;

public interface ReprodutorMusical {
    void tocar();
    void pausar();
    void selecionarMusica(String musica);
}
EOF

# Criar arquivo AparelhoTelefonico.java
cat > src/main/java/com/telefone/interfaces/AparelhoTelefonico.java << 'EOF'
package com.telefone.interfaces;

public interface AparelhoTelefonico {
    void ligar(String numero);
    void atender();
    void iniciarCorreioVoz();
}
EOF

# Criar arquivo NavegadorInternet.java
cat > src/main/java/com/internet/interfaces/NavegadorInternet.java << 'EOF'
package com.internet.interfaces;

public interface NavegadorInternet {
    void exibirPagina(String url);
    void adicionarNovaAba();
    void atualizarPagina();
}
EOF

# Criar arquivo Iphone.java
cat > src/main/java/com/dispositivo/Iphone.java << 'EOF'
package com.dispositivo;

import com.reprodutor.interfaces.ReprodutorMusical;
import com.telefone.interfaces.AparelhoTelefonico;
import com.internet.interfaces.NavegadorInternet;

public class Iphone implements ReprodutorMusical, AparelhoTelefonico, NavegadorInternet {
    private String musicaAtual;
    private boolean emChamada;
    private String urlAtual;

    // Implementação ReprodutorMusical
    @Override
    public void tocar() {
        if (musicaAtual != null) {
            System.out.println("Tocando: " + musicaAtual);
        } else {
            System.out.println("Nenhuma música selecionada");
        }
    }

    @Override
    public void pausar() {
        if (musicaAtual != null) {
            System.out.println("Música pausada: " + musicaAtual);
        }
    }

    @Override
    public void selecionarMusica(String musica) {
        this.musicaAtual = musica;
        System.out.println("Música selecionada: " + musica);
    }

    // Implementação AparelhoTelefonico
    @Override
    public void ligar(String numero) {
        if (!emChamada) {
            System.out.println("Ligando para: " + numero);
            emChamada = true;
        } else {
            System.out.println("Telefone ocupado");
        }
    }

    @Override
    public void atender() {
        if (!emChamada) {
            System.out.println("Chamada atendida");
            emChamada = true;
        }
    }

    @Override
    public void iniciarCorreioVoz() {
        System.out.println("Iniciando correio de voz");
    }

    // Implementação NavegadorInternet
    @Override
    public void exibirPagina(String url) {
        this.urlAtual = url;
        System.out.println("Exibindo página: " + url);
    }

    @Override
    public void adicionarNovaAba() {
        System.out.println("Nova aba adicionada");
    }

    @Override
    public void atualizarPagina() {
        if (urlAtual != null) {
            System.out.println("Atualizando página: " + urlAtual);
        }
    }
}
EOF

# Tornar o script executável
chmod +x setup.sh

echo "Estrutura do projeto criada com sucesso!"
echo "Diretório do projeto: iphone-project/"