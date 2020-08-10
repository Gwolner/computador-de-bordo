package model;


public class OperacaoDeCalculo {
    
    private float valor;
    private float distancia;
    
    public OperacaoDeCalculo(){
        this.valor = 0;
        this.distancia = 0;
    }
    
    public float calcularValor(float total, float preco){        
        this.valor = total * preco;
        
        return this.valor;
    };
    
    public float calcularDistancia(float total, float consumo){
        this.distancia = total * consumo;
        
        return this.distancia;
    }
}
