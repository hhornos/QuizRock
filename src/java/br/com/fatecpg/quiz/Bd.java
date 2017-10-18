/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;

/**
 *
 * @author rodri
 */
public class Bd {
    private static ArrayList<Usuario> usuario;
    private static ArrayList<Historico> historico;

    public static ArrayList<Usuario> getUsuario() {
        if(usuario == null){
            usuario = new ArrayList<>();
        }
        return usuario;
    }
    
    public static ArrayList<Historico> getHistorico() {
        if(historico == null){
            historico = new ArrayList<>();
        }
        return historico;
    }
    
    public static void addHistorico(Historico historico) {
        Bd.getHistorico().add(historico);
    }

    public static void addUsuario(Usuario usuario) {
        Bd.getUsuario().add(usuario);
    }
    
    public static boolean login(String user, String password){
        getUsuario();
        for(Usuario f: usuario){
            if(f.getLogin().equals(user) && f.getSenha().equals(password)){
                return true;
            }
        }
        return false;
    }
    
    public static boolean verifUserExist(String user){
        getUsuario();
        for(Usuario f: usuario){
            if(f.getLogin().equals(user)){
                return true;
            }
        }
        return false;
    }
}
