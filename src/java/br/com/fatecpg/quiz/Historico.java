/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

/**
 *
 * @author LuizMaciel
 */
public class Historico {
    
    int nota;
    String nome;
    
    public void addNota(int nota, String nome) {
        this.nota = nota;
        this.nome = nome;
    }
    
    public String getNome(){
        return nome;
    }
    
    public int getNota(){
        return nota;
    }
}
