import java.util.*;
import java.sql.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.table.*;

public class SampleP3 extends JFrame
{
   private JTable tb;
   private JScrollPane sp;

   public static void main(String[] args)
   {
      SampleP3 sm = new SampleP3();
   }
   public SampleP3()
   {
      //タイトルの設定
      super("サンプル");

      //コンポーネントの作成
      tb = new JTable();
      sp = new JScrollPane(tb);

      //コンテナへの追加
      add(sp);

      //リスナの登録
      addWindowListener(new SampleWindowListener());

      //フレームの設定
      setSize(300, 300);
      setVisible(true);

      try{
         //接続の準備
         String url = "jdbc:derby:fooddb;create=true";
         String usr = "";
         String pw = "";

         //データベースへの接続
         Connection cn = DriverManager.getConnection(url, usr, pw);

         //問い合わせの準備
         Statement st = cn.createStatement();
         String qry = "SELECT * FROM 果物表";

         //問い合わせ
         ResultSet rs = st.executeQuery(qry);
         tb.setModel(new MyTableModel(rs));

         //接続のクローズ
         rs.close();
         st.close();
         cn.close();
      }
      catch(Exception e){
         e.printStackTrace();
      }
   }

   //リスナクラス
   class SampleWindowListener extends WindowAdapter
   {
      public void windowClosing(WindowEvent e)
      {
         System.exit(0);
      }
   }

   //モデルクラス
   class MyTableModel extends AbstractTableModel
   {
      private ArrayList<String> colname;
      private ArrayList<ArrayList> data;

      public MyTableModel(ResultSet rs)
      {
         try{

            //列数の取得
            ResultSetMetaData rm = rs.getMetaData();
            int cnum = rm.getColumnCount();
            colname = new ArrayList<String>(cnum);

            //列名の取得
            for(int i=1; i<=cnum; i++){
               colname.add(rm.getColumnName(i));
            }

            //行の取得
            data = new ArrayList<ArrayList>(); 
            while(rs.next()){
               ArrayList<String> rowdata = new ArrayList<String>();
               for(int i=1; i<=cnum; i++){
                  rowdata.add(rs.getObject(i).toString());
               }
               data.add(rowdata);
            }
         }
         catch(Exception e){
            e.printStackTrace();
         }
      }
      public int getRowCount() 
      {
         return data.size();
      }
      public int getColumnCount() 
      {
         return colname.size();
      }
      public Object getValueAt(int row, int column) 
      {
         ArrayList rowdata = (ArrayList) (data.get(row));
         return rowdata.get(column);
      }
      public String getColumnName(int column) 
      {
         return (String) colname.get(column);
      }
   }
}
