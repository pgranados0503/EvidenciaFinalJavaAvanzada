
package modelo2;

public class Registro {
    private String usuario;
    private String contraseña;
    private String nombre;
    private double edad;
    private String sexo;
    private String email;
    private double peso;
    private double estatura;
    
    private String pnombre;
    
    public Registro(){
        this.usuario="";
        this.contraseña="";
        this.nombre="";
        this.edad=0;
        this.sexo="";
        this.email="";
        this.peso=0;
        this.estatura=0;

    }
    
    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContraseña() {
        return contraseña;
    }


    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    
    
    public void Pnombre(){
      this.setPnombre(this.nombre);
   }

 
    public String getNombre() {
        return nombre;
    }

 
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getEdad() {
        return edad;
    }

    public void setEdad(String edad) {
        this.setEdad(edad);
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
   public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public double getEstatura() {
        return estatura;
    }

    public void setEstatura(double estatura) {
        this.estatura = estatura;
    }
    
    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.estatura = peso;
    }

    

    public String getPnombre() {
        return pnombre;
    }


    public void setPnombre(String pnombre) {
        this.pnombre = pnombre;
    }


    public void setEdad(double edad) {
        this.edad = edad;
    }
}
