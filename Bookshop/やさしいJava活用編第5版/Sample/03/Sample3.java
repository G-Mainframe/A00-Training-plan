import javafx.application.*;
import javafx.stage.*;
import javafx.scene.*;
import javafx.scene.control.*;
import javafx.scene.layout.*;

public class Sample3 extends Application
{
   private Label lb;
   private Button bt;

   public static void main(String[] args)
   {
      launch(args);
   }
   public void start(Stage stage)throws Exception
   {
      //コントロールの作成
      lb = new Label("COBOLﾖﾕｽｫﾕｽﾊ､Java!");
      bt = new Button("ｿｪﾕｽ");

      //ペインの作成
      BorderPane bp = new BorderPane();

      //ペインへの追加
      bp.setTop(lb);
      bp.setCenter(bt);

      //シーンの作成
      Scene sc = new Scene(bp, 500, 200);

      //ステージへの追加
      stage.setScene(sc);

      //ステージの表示
      stage.setTitle("COBOLﾌｽJava");
      stage.show();
   }
}
