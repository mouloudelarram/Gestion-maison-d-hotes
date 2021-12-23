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
    boolean status;
    public TableDemande(){
        super();
    }
    public void pushTableDemande(int idclient, int idoffer, int idadmin, String typeoffer) throws Exception {
        try{
            statementAdmin.executeUpdate("INSERT INTO `demande` (`Idclient`, `Idoffer`, `Idadmin`, `Typeoffer`) VALUES\n" +
            "('"+idclient+"', '"+idoffer+"','"+idadmin+"', '"+typeoffer+"'); ");
        }catch(Exception e){
            throw new Exception("Error  pushTableDemande table demande  : "+e);
        }finally{
            super.colse();
        }
    }
    public ResultSet getTableDemande(){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT Iddemande, FirstName, LastName, Email, Phone, CIN, offer.Idoffer, label, dateDemande from client, offer, demande where (client.Idclient = demande.Idclient and offer.Idoffer = demande.Idoffer) and demande.status = true");
            return ResultAdmin;
        }catch(Exception e){
            System.out.println("error getTableDemande table demande :"+e);
            return null;
        }
    } 
    public ResultSet ChercherData(String str){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT Iddemande, FirstName, LastName, Email, Phone, CIN, offer.Idoffer, label, dateDemande  FROM client, offer, demande WHERE (FirstName = '"+str+"' or LastName = '"+str+"' or CIN = '"+str+"' OR Phone = '"+str+"' or label ='"+str+"' or dateDemande='"+str+"'  ) and client.Idclient = demande.Idclient and offer.Idoffer = demande.Idoffer;");
           return ResultAdmin;
        }catch(Exception e){
            System.out.println("Error ChercherData table demande :  " + e);
            return null;
        }
    }
     public boolean ChnageStatusTableDemande(int Idoffer, boolean status){
        try{
            statementAdmin.executeUpdate("UPDATE demande set status = "+status+" where Idoffer='"+Idoffer+"'");
            return true;
        }catch(Exception e){
            System.out.println("error ChnageStatusTableDemande table demade :"+e);
            return false;
        }finally{
            super.colse();
        }
    }
    
    public boolean statusTableDemande(int id_demande){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT demande.status from demande where demande.Iddemande="+id_demande+" ");
            status = true;
            while(ResultAdmin.next())
                status = ResultAdmin.getBoolean("status");
            return status;
        }catch(Exception e){
            System.out.println("error statusTableOffer table offer :"+e);
            return true;
        }finally{
            super.colse();
        }
    }
}
