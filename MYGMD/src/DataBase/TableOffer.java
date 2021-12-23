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
public class TableOffer extends ConnectionGMHDB {
    int idoffer;
    String Label;
    String Type;
    boolean status;
    float price;
    public TableOffer(){
        super();
    }
     public boolean pushTableOffer(String Label, float price, String Type) {
        try{
            statementAdmin.executeUpdate("INSERT INTO `offer` (`label`, `price`,`type`) VALUES\n" +
            "('"+Label+"', '"+price+"','"+Type+"'); ");
            return true;
        }catch(Exception e){
            System.out.println("Error pushTableOffer table offer : "+e);
            return false;
        }finally{
            super.colse();
        }
    }
    public ResultSet getTableOffer(String type){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT idoffer, label, price, status from offer where type ='"+type+"'");
            return ResultAdmin;
        }catch(Exception e){
            System.out.println("error getTableOffer table offer :"+e);
            return null;
        }
    } 
    public boolean editTableOffer(String oldName, String NewName, float Price, String type){
        try{
            statementAdmin.executeUpdate("UPDATE offer set label='"+NewName+"', price='"+Price+"'where label='"+oldName+"' and type='"+type+"'");
            return true;
        }catch(Exception e){
            System.out.println("error editTableOffer table offer :"+e);
            return false;
        }finally{
            super.colse();
        }
    } 
    public boolean editStatusTableOffer(int idOffer){
        try{
            statementAdmin.executeUpdate("UPDATE offer set status= true where idoffer='"+idOffer+"'");
            return true;
        }catch(Exception e){
            System.out.println("error editStatusTableOffer table offer :"+e);
            return false;
        }finally{
            super.colse();
        }
    } 
    public boolean removeTableOffer(String str, String type){
        try{
            statementAdmin.executeUpdate("delete from offer where label='"+str+"' and type ='"+type+"'");
            return true;
        }catch(Exception e){
            System.out.println("Error removeTableOffer table offer :"+e);
            return false;
        }finally{
            super.colse();
        }
    }
    public boolean statusTableOffer(int id_offer){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT status from offer where Idoffer = "+id_offer+"");
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
    public boolean changeStatusTableOffer(int id_offer, int status){
        try{
            statementAdmin.executeUpdate("UPDATE offer set status= '"+status+"' where idoffer='"+id_offer+"'");
            return true;
        }catch(Exception e){
            System.out.println("error changeStatusTableOffer table offer :"+e);
            return false;
        }finally{
            super.colse();
        }
    }
    public boolean checkIfIdExist(int id_offer, String Type){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT type FROM `offer` WHERE idoffer = "+id_offer+"; ");
            this.Type = "";
            while(ResultAdmin.next()) this.Type=ResultAdmin.getString("type");
            if (this.Type.equals(Type))
                return true;
            else
                return false;
           
        }catch(Exception e){
            System.out.println("error checkIfIdExist table  offer :"+e);
            return true;
        }finally{
            super.colse();
        }
    }    
}
