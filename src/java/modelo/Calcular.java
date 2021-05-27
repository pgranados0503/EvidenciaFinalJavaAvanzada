
package modelo;
import javax.swing.JOptionPane;

public class Calcular {
   private double num1;
   private double num2;
   private double alurapor2;
   private double resultado;
   
   public Calcular(){
       this.num1=0;
       this.num2=0;
       this.resultado=0;
   }

   public void Resultado(){
      this.setResultado(this.num2/(this.num1*this.num1));
   }

    public double getNum1() {
        return num1;
    }

    public void setNum1(double num1) {
        this.num1 = num1;
    }

    public double getNum2() {
        return num2;
    }

    public void setNum2(double num2) {
        this.num2 = num2;
    }

    public double getResultado() {
        return resultado;
    }

    public void setResultado(double resultado) {
        this.resultado = resultado;
    }
}
