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
