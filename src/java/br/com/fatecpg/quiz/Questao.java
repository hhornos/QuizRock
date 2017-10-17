package br.com.fatecpg.quiz;

/**
 *
 * @author hhornos
 */
public class Questao {
    private int numero;
    private String pergunta;
    private String resposta;
    private String alternativas[];

    public Questao(int numero,String pergunta, String resposta, String[] alternativas) {
        this.numero = numero;
        this.pergunta = pergunta;
        this.resposta = resposta;
        this.alternativas = alternativas;
    }
    public int getNumero(){
        return numero;
    }
    public void setNumero(int numero){
        this.numero = numero;    
    }

    public String getPergunta() {
        return pergunta;
    }

    public void setPergunta(String pergunta) {
        this.pergunta = pergunta;
    }

    public String getResposta() {
        return resposta;
    }

    public void setResposta(String resposta) {
        this.resposta = resposta;
    }

    public String[] getAlternativas() {
        return alternativas;
    }

    public void setAlternativas(String[] alternativas) {
        this.alternativas = alternativas;
    }
}
