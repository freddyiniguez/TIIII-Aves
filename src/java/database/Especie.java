package database;

import java.io.*;
import javax.persistence.*;

    @Entity
    @Table(name = "Especie")
    @NamedQueries({
    @NamedQuery(name = "Especie.findByIdespecie", query = "SELECT h FROM Especie h WHERE h.idespecie = :idespecie"),
    @NamedQuery(name = "Especie.findByIdorden", query = "SELECT h FROM Especie h WHERE h.idorden = :idorden"),
    @NamedQuery(name = "Especie.findByIdfamilia", query = "SELECT h FROM Especie h WHERE h.idfamilia = :idfamilia"),
    @NamedQuery(name = "Especie.findByIdgenero", query = "SELECT h FROM Especie h WHERE h.idgenero = :idgenero"),
    @NamedQuery(name = "Especie.findByEspecie", query = "SELECT h FROM Especie h WHERE h.especie = :especie"),
    @NamedQuery(name = "Especie.findByIdmicrohabitat", query = "SELECT h FROM Especie h WHERE h.idmicrohabitat = :idmicrohabitat"),
    @NamedQuery(name = "Especie.findByIdestrato", query = "SELECT h FROM Especie h WHERE h.idestrato = :idestrato"),
    @NamedQuery(name = "Especie.findByMinimo", query = "SELECT h FROM Especie h WHERE h.minimo = :minimo"),
    @NamedQuery(name = "Especie.findByMaximo", query = "SELECT h FROM Especie h WHERE h.maximo = :maximo"),
    @NamedQuery(name = "Especie.findByIdcentroA", query = "SELECT h FROM Especie h WHERE h.idcentroA = :idcentroA"),
    @NamedQuery(name = "Especie.findByArelativa", query = "SELECT h FROM Especie h WHERE h.arelativa = :arelativa"),
    @NamedQuery(name = "Especie.findBySensible", query = "SELECT h FROM Especie h WHERE h.sensible = :sensible"),
    @NamedQuery(name = "Especie.findByPconserva", query = "SELECT h FROM Especie h WHERE h.pconserva = :pconserva"),
    @NamedQuery(name = "Especie.findByPinvestiga", query = "SELECT h FROM Especie h WHERE h.pinvestiga = :pinvestiga"),
    @NamedQuery(name = "Especie.findByNotas", query = "SELECT h FROM Especie h WHERE h.notas = :notas")})

public class Especie implements Serializable {
    @Id
    private Long id;
    @Basic(optional = false)
    @Column(name = "idespecie")
    private Integer idespecie;
    @Column(name = "idorden")
    private Integer idorden;
    @Column(name = "idfamilia")
    private Integer idfamilia;
    @Column(name = "idgenero")
    private Integer idgenero;
    @Column(name = "especie")
    private String especie;
    @Column(name = "idmicrohabitat")
    private Integer idmicrohabitat;
    @Column(name = "idestrato")
    private Integer idestrato;
    @Column(name = "minimo")
    private String minimo;
    @Column(name = "maximo")
    private String maximo;
    @Column(name = "idcentroA")
    private Integer idcentroA;
    @Column(name = "arelativa")
    private Integer arelativa;
    @Column(name = "sensible")
    private Integer sensible;
    @Column(name = "pconserva")
    private Integer pconserva;
    @Column(name = "pinvestiga")
    private Integer pinvestiga;
    @Column(name = "notas")
    private String notas;
    
    @Override
    public int hashCode(){
        int hash = 0;
        hash += (idespecie != null ? idespecie.hashCode() : 0);
        return hash;
    }
    
    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Especie)) {
            return false;
        }
        Especie other = (Especie) object;
        if ((this.idespecie == null && other.idespecie != null) || (this.idespecie != null && !this.idespecie.equals(other.idespecie))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "database.Especie[ idespecie=" + idespecie + " ]";
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getIdespecie() {
        return idespecie;
    }

    public void setIdespecie(Integer idespecie) {
        this.idespecie = idespecie;
    }

    public Integer getIdorden() {
        return idorden;
    }

    public void setIdorden(Integer idorden) {
        this.idorden = idorden;
    }

    public Integer getIdfamilia() {
        return idfamilia;
    }

    public void setIdfamilia(Integer idfamilia) {
        this.idfamilia = idfamilia;
    }

    public Integer getIdgenero() {
        return idgenero;
    }

    public void setIdgenero(Integer idgenero) {
        this.idgenero = idgenero;
    }

    public String getEspecie() {
        return especie;
    }

    public void setEspecie(String especie) {
        this.especie = especie;
    }

    public Integer getIdmicrohabitat() {
        return idmicrohabitat;
    }

    public void setIdmicrohabitat(Integer idmicrohabitat) {
        this.idmicrohabitat = idmicrohabitat;
    }

    public Integer getIdestrato() {
        return idestrato;
    }

    public void setIdestrato(Integer idestrato) {
        this.idestrato = idestrato;
    }

    public String getMinimo() {
        return minimo;
    }

    public void setMinimo(String minimo) {
        this.minimo = minimo;
    }

    public String getMaximo() {
        return maximo;
    }

    public void setMaximo(String maximo) {
        this.maximo = maximo;
    }

    public Integer getIdcentroA() {
        return idcentroA;
    }

    public void setIdcentroA(Integer idcentroA) {
        this.idcentroA = idcentroA;
    }

    public Integer getArelativa() {
        return arelativa;
    }

    public void setArelativa(Integer arelativa) {
        this.arelativa = arelativa;
    }

    public Integer getSensible() {
        return sensible;
    }

    public void setSensible(Integer sensible) {
        this.sensible = sensible;
    }

    public Integer getPconserva() {
        return pconserva;
    }

    public void setPconserva(Integer pconserva) {
        this.pconserva = pconserva;
    }

    public Integer getPinvestiga() {
        return pinvestiga;
    }

    public void setPinvestiga(Integer pinvestiga) {
        this.pinvestiga = pinvestiga;
    }

    public String getNotas() {
        return notas;
    }

    public void setNotas(String notas) {
        this.notas = notas;
    }
}