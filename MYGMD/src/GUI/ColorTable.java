/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GUI;

import DataBase.TableOffer;
import java.awt.Color;
import java.awt.Component;
import javax.swing.JLabel;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.TableCellRenderer;

/**
 *
 * @author mouloud
 */
public class ColorTable extends JTable{
    String status;
    String type;
    @Override
    public Component prepareRenderer(TableCellRenderer renderer, int row, int column){
        try{
              Component comp = super.prepareRenderer(renderer, row, column);
              comp.setBackground(Color.white);
              comp.setForeground(Color.BLACK);
              if (Object.class.equals(this.getColumnClass(column)) && (getValueAt(row,column) != null)){
                this.status = getValueAt(row,column).toString();
                this.type = getValueAt(row,column).toString();
                if (this.type.contains("chambre") ){
                    comp.setBackground(Color.white);
                    comp.setForeground(Color.blue);
                }
                if (this.type.contains("table") ){
                    comp.setBackground(Color.white);
                    comp.setForeground(Color.orange);
                }
                if (this.status.equals("free")){
                    comp.setBackground(Color.white);
                    comp.setForeground(Color.green);
                }
                if (this.status.equals("occuped")){
                    comp.setBackground(Color.white);
                    comp.setForeground(Color.red);
                }                    
              }
              return comp;
        }catch(Exception e){
            System.out.println("errror test"+e);
            return null;
        }
  }
}
