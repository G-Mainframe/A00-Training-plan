import javafx.application.*;
import javafx.stage.*;
import javafx.scene.*;
import javafx.scene.control.*;
import javafx.scene.layout.*;
import javafx.event.*;

public class Sample4 extends Application
{
   private Label lb;
   private Button bt;

   public static void main(String[] args)
   {
      launch(args);
   }
   public void start(Stage stage)throws Exception
   {
      //僐儞僩儘乕儖偺嶌惉
      lb = new Label("COBOL准备就绪");
      bt = new Button("开战");

      //儁僀儞偺嶌惉
      BorderPane bp = new BorderPane();

      //儁僀儞傊偺捛壛
      bp.setTop(lb);
      bp.setCenter(bt);

      //僀儀儞僩僴儞僪儔偺搊榐
      bt.setOnAction(new SampleEventHandler());

      //僔乕儞偺嶌惉
      Scene sc = new Scene(bp, 300, 200);

      //僗僥乕僕傊偺捛壛
      stage.setScene(sc);

      //僗僥乕僕偺昞帵
      stage.setTitle("COBOL挑战Java");
      stage.show();
   }

   //僀儀儞僩僴儞僪儔僋儔僗
   class SampleEventHandler implements EventHandler<ActionEvent>
   {
      public void handle(ActionEvent e)
      {
         lb.setText("COBOL终将战胜Java!");
		 bt.setText("挑战结束!");
      }
   }
}
