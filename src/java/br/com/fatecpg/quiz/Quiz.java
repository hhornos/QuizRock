/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;

/**
 *
 * @author hhornos
 */
public class Quiz {
    public static int quantidade;
    public static double soma;
    
    public static double getMedia() {
        if (soma == 0)
            return 0;
        
        return soma/(double)quantidade;
    }
    
    private static ArrayList<Questao> questoes;
    
    public static ArrayList<Questao> getQuestoes() {
        if (questoes == null) {
            questoes = new ArrayList<>();
            for (int i=1; i<=10; i++) {
                Questao q = new Questao("1 + " + i + "?", Integer.toString(1+i),
                        new String[] {Integer.toString(1+i), Integer.toString(1-i),
                            Integer.toString(i)});
                questoes.add(q);
            }
        }
        return questoes;
    }
}
