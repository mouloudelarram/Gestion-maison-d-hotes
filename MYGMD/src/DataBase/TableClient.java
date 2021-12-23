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
            System.out.println("Error pushTableClient table client : "+e);
            throw new Exception("Error pushTableClient table client : "+e);
        }finally{
            super.colse();
        }
    }
    public ResultSet getTableClient(){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT FirstName, LastName, Email, Phone, CIN, offer.Idoffer, label from client, offer , demade where client.Idclient = demande.Idclient and offer.Idoffer = demande.Idoffer and demande.status = true");
            return ResultAdmin;
        }catch(Exception e){
            System.out.println("error getTableClient table client :"+e);
            return null;
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
        }finally{
            super.colse();
        }
    }
    public int getIdclientTableClient(int Idoffer){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT Idclient FROM demande WHERE Idoffer = '"+Idoffer+"' ;");
            this.IdClinet = 0;
            while(ResultAdmin.next()) this.IdClinet  =  ResultAdmin.getInt("Idclient");
            return this.IdClinet ;
        }catch(Exception e){
            System.out.println("Error getIdclientTableClient table client :  " + e);
            return 0;
        }finally{
            super.colse();
        }
    }
}
