package Src.Backend.Models;

import java.util.Date;

public class Carrera extends Object {
	private int id_carrera = 0;
	private Date fecha = null;
	private String tipo = "";
	private String estado = "";
	private double precio = 0;
	private String motivo = "";
	private String mes = "";
	private String ciclo = "";

	// Constructor con ID autoincremental
	public Carrera(int idCarrera, Date fecha, String tipo, String estado, double precio, String motivo, String mes, String ciclo) {
		this.id_carrera = idCarrera;
		setFecha(fecha);
		setTipo(tipo);
		setEstado(estado);
		setPrecio(precio);
		setMotivo(motivo);
		setMes(mes);
		setCiclo(ciclo);
	}

	// Constructor sin ID autoincremental
	public Carrera(Date fecha, String tipo, String estado, double precio, String motivo, String mes, String ciclo) {
		setFecha(fecha);
		setTipo(tipo);
		setEstado(estado);
		setPrecio(precio);
		setMotivo(motivo);
		setMes(mes);
		setCiclo(ciclo);
	}

	// Getters y Setters
	public int getId_carrera() {
		return id_carrera;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public String getMotivo() {
		return motivo;
	}

	public void setMotivo(String motivo) {
		this.motivo = motivo;
	}

	public String getMes() {
		return mes;
	}

	public void setMes(String mes) {
		this.mes = mes;
	}

	public String getCiclo() {
		return ciclo;
	}

	public void setCiclo(String ciclo) {
		this.ciclo = ciclo;
	}
}