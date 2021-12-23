/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataBase;

import java.sql.ResultSet;

/**
 *
 * @author mouloud
 */
public class TableDemande extends ConnectionGMHDB {
    public TableDemande(){
        super();
    }
    public void pushTableDemande(int idclient, int idoffer, int idadmin, String typeoffer) throws Exception {
        try{
            System.out.println("idclient : "+idclient);
            System.out.println("idoffer : "+idoffer);
            System.out.println("idadmin : "+idadmin);
            System.out.println("typeoffer : "+typeoffer);
            statementAdmin.executeUpdate("INSERT INTO `demande` (`Idclient`, `Idoffer`, `Idadmin`, `Typeoffer`) VALUES\n" +
            "('"+idclient+"', '"+idoffer+"','"+idadmin+"', '"+typeoffer+"'); ");
        }catch(Exception e){
            System.out.println("Erreur table demande push data : "+e);
            throw new Exception("erreur in push data demande");
        }
    }
    public ResultSet getTableDemande(){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT FirstName, LastName, Email, Phone, CIN, offer.Idoffer, label, dateDemande from client, offer, demande where (client.Idclient = demande.Idclient and offer.Idoffer = demande.Idoffer) and demande.status = true");
            return ResultAdmin;
        }catch(Exception e){
            System.out.println("erreur get datas demande :"+e);
            return null;
        }
    } 
    public ResultSet ChercherData(String str){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT FirstName, LastName, Email, Phone, CIN, offer.Idoffer, label, dateDemande  FROM client, offer, demande WHERE (FirstName = '"+str+"' or LastName = '"+str+"' or CIN = '"+str+"') and client.Idclient = demande.Idclient and offer.Idoffer = demande.Idoffer;");
            return ResultAdmin;
        }catch(Exception e){
            System.out.println("Erreur table demande chearcher data  :  " + e);
            return null;
        }
    }
     public boolean ChnageStatusTableDemande(int Idoffer, boolean status){
        try{
            statementAdmin.executeUpdate("UPDATE demande set status = "+status+" where Idoffer='"+Idoffer+"'");
            return true;
        }catch(Exception e){
            System.out.println("erreur change status table demade :"+e);
            return false;
        }
    }
}
