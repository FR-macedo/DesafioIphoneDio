# Mini-Projeto construído para disciplina de POO do bootcamp de Java da DIO

## Estrutura do Projeto

    iphone-project/
    └── src/
        └── main/
            └── java/
                └── com/
                    ├── reprodutor/
                    │   └── interfaces/
                    │       └── ReprodutorMusical.java
                    ├── telefone/
                    │   └── interfaces/
                    │       └── AparelhoTelefonico.java
                    ├── internet/
                    │   └── interfaces/
                    │       └── NavegadorInternet.java
                    └── dispositivo/
                        └── Iphone.java

## UML do projeto


    classDiagram

    class ReprodutorMusical {
        <<interface>>
        +tocar()
        +pausar()
        +selecionarMusica(String musica)
    }
    
    class AparelhoTelefonico {
        <<interface>>
        +ligar(String numero)
        +atender()
        +iniciarCorreioVoz()
    }
    
    class NavegadorInternet {
        <<interface>>
        +exibirPagina(String url)
        +adicionarNovaAba()
        +atualizarPagina()
    }
    
    class Iphone {
        -musicaAtual: String
        -emChamada: boolean
        -urlAtual: String
        +tocar()
        +pausar()
        +selecionarMusica(String musica)
        +ligar(String numero)
        +atender()
        +iniciarCorreioVoz()
        +exibirPagina(String url)
        +adicionarNovaAba()
        +atualizarPagina()
    }

    Iphone ..|> ReprodutorMusical
    Iphone ..|> AparelhoTelefonico
    Iphone ..|> NavegadorInternet


## Como copiar o projeto

Use o setup.sh que está na pasta raiz do repo e rode esse comando no gitbash dentro do seu diretório para o projeto:

```
chmod +x setup.sh
./setup.sh
```