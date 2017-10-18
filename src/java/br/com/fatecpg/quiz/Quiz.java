/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;
import java.util.Collections;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;

/**
 *
 * @author hhornos
 */
public class Quiz {
    //public static int quantidade;
    private double soma;
    private String user;
    private static ArrayList<Questao> questoes;

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public double getSoma() {
        return soma;
    }

    public void setSoma(double soma) {
        this.soma = soma;
    }
    
    
    
    public double getMedia() {
        if (this.soma == 0)
            return 0;
        
        return this.soma/10;
    }
    
    
    
    public static ArrayList<Questao> getQuestoes() {
        if (questoes == null) {
            questoes = new ArrayList<>();
            
                questoes.add(new Questao(1,"Mick Jagger, vocalista do Rolling Stones, escreve a música \"Angie\" em homenagem a uma esposa de um rockstar. Quem é essa esposa?", "Esposa de David Bowie",new String[] {"Esposa de Ozzy Osbourne", "Esposa de David Bowie","Esposa de George Harrison"}));
                questoes.add(new Questao(2,"A música \"Fairies Wear Boots\", foi composta pelo Black Sabbath depois de:", "Apanhar de um grupo de skinheads",new String[] {"Góticos que bebiam perto do cemitério onde gravaram a músic", "Jovens ingleses que se alistaram para a guerra das Malvinas","Apanhar de um grupo de skinheads"}));
                questoes.add(new Questao(3,"O AC/DC gravou uma trilha com videoclipe para o filme \"O Último Grande Herói\", estrelado por Arnold Schwarzenegger. Que música é essa?", "Big Gun",new String[] {"You Shook Me Night All Long", "Big Gun","Hard As A Rock"}));
                questoes.add(new Questao(4,"A banda brasileira \"IRA!\" abre seu Acústico MTV com um cover em português de \"Train in Vain\". Que banda é essa?", "The Clash",new String[] {"Sex Pistols", "Ramones","The Clash"}));
                questoes.add(new Questao(5,"Em que ano foi formada a famosa banda Black Sabbath", "1968",new String[] {"1968", "1970","1965"}));
                questoes.add(new Questao(6,"Qual dos integrantes dos Ramones fez uma jam com os brasileiros da banda Raimundos?", "Marky Ramone",new String[] {"Marky Ramone", "Dee Dee Ramone","Joey Ramone"}));
                questoes.add(new Questao(7,"Que banda inglesa banda, dos anos 70, usou um balão de gás de Hélio em um formato de um porco, para fazer o lançamento do disco?", "Pink Floyd",new String[] {"Pink Floyd", "Queen","Iron Maiden"}));
                questoes.add(new Questao(8,"Quais são os integrantes originais da banda Beatles ?", "John Lennon, Paul McCartney, George Harrison, Stu Sutcliffe e Peter Best",new String[] {"John Lennon, Jimmy Page, Paul McCartney, Stu Sutcliffe e George Harrison", "Jim Morrison, Paul McCartney ,George Harrison, John Lennon e Stu Sutcliffe","John Lennon, Paul McCartney, George Harrison, Stu Sutcliffe e Peter Best"}));
                questoes.add(new Questao(9,"Ozzy Osbourne, em um show, mordeu a cabeça de um animal. Que animal era esse?", "Morcego",new String[] {"Pombo", "Morcego","Rato"}));
                questoes.add(new Questao(10,"Após a morte de Kurt Cobain, em 1994, Dave Grohl formou uma banda em 1995. Que banda é essa?", "Foo Fighters",new String[] {"Foo Fighters", "Dave Grohl Project","Kung Fu Fighter's"}));
                
                
                
        }
        return questoes;
    }
}
