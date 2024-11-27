import syntaxtree.*;
import visitor.*;
import java.util.*;
public class A2 {
   public static void main(String [] args) {
      try {
         Node root = new MiniJavaParser(System.in).Goal();
        // System.out.println("Program parsed successfully");
         combined Table=new combined();
         Table.Table1.complete=false;
         root.accept(new GJDepthFirst(),Table); // Your assignment part is invoked here.
         Table.Table1.complete=true;
         Table.Table2.construct(Table.Table1);
      	   root.accept(new GJDepthFirst(),Table);
                
        }
        
        
                  
      catch (ParseException e) {
         System.out.println(e.toString());
      }
   }
} 







