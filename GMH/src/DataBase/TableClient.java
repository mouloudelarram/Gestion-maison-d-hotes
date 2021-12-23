/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataBase;

import java.sql.ResultSet;
import java.time.LocalDateTime;

/**
 *
 * @author mouloud
 */
public class TableClient extends ConnectionGMHDB {
    public int IdClinet;
    public String FirstName;
    public String LastName;
    public String Email;
    public String Phone ;
    public String CIN;  
    
    public TableClient(){
        super();
    }
    public void pushTableClient(String FirstName, String LastName, String Email, String Phone, String CIN ) throws Exception {
        try{
            statementAdmin.executeUpdate("INSERT INTO `client` (`FirstName`, `LastName`, `Email`, `Phone`, `CIN`) VALUES\n" +
            "('"+FirstName+"', '"+LastName+"','"+Email+"', '"+Phone+"', '"+CIN+"'); ");
        }catch(Exception e){
            System.out.println("Erreur table client push data: "+e);
            throw new Exception("erreur in push data client");
        }
    }
    public ResultSet getTableClient(){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT FirstName, LastName, Email, Phone, CIN, offer.Idoffer, label from client, offer , demade where client.Idclient = demande.Idclient and offer.Idoffer = demande.Idoffer and demande.status = true");
            return ResultAdmin;
        }catch(Exception e){
            System.out.println("erreur get datas client :"+e);
            return null;
        }
    } 
    public ResultSet ChercherData(String str){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT FirstName, LastName, Email, Phone, CIN, offer.Idoffer, label  FROM client, offer, demande WHERE (FirstName = '"+str+"' or LastName = '"+str+"' or CIN = '"+str+"') and client.Idclient = demande.Idclient and offer.Idoffer = demande.Idoffer;");
            return ResultAdmin;
        }catch(Exception e){
            System.out.println("Erreur table client  :  " + e);
            return null;
        }
    }
    public boolean ChnageStatusTableClinet(int Idclient, boolean status){
        try{
            statementAdmin.executeUpdate("UPDATE client set status = "+status+" where Idclient='"+Idclient+"'");
            return true;
        }catch(Exception e){
            System.out.println("erreur table client :"+e);
            return false;
        }
    }
    public boolean ChangeOffreTableClient(String CIN, int Idoffer){
        try{
            statementAdmin.executeUpdate("UPDATE client set Idoffer='"+Idoffer+"' where CIN='"+CIN+"'");
            return true;
        }catch(Exception e){
            System.out.println("erreur table client :"+e);
            return false;
        }
    }
    public boolean ChangeOffreTableClient(int Idoffer){
        try{
            statementAdmin.executeUpdate("UPDATE client set status = false where status = true AND Idoffer='"+Idoffer+"'");
            return true;
        }catch(Exception e){
            System.out.println("erreur table client :"+e);
            return false;
        }
    }
    public int getIdclientTableClient(String CIN){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT Idclient FROM client WHERE CIN = '"+CIN+"' ;");
            int idclient = 0;
            while(ResultAdmin.next()) idclient =  ResultAdmin.getInt("Idclient");
            return idclient;
            
            
        }catch(Exception e){
            System.out.println("Erreur table client  get id  :  " + e);
            return 0;
        }
    }
    public int getIdclientTableClient(int Idoffer){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT Idclient FROM demande WHERE Idoffer = '"+Idoffer+"' ;");
            int idclient = 0;
            while(ResultAdmin.next()) idclient =  ResultAdmin.getInt("Idclient");
            return idclient;
            
            
        }catch(Exception e){
            System.out.println("Erreur table client  get id  :  " + e);
            return 0;
        }
    }
}
