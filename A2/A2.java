import syntaxtree.*;
import visitor.*;
import java.util.*;
public class A2 {
   public static void main(String [] args) {
      try {
         Node root = new MiniJavaParser(System.in).Goal();
      //   System.out.println("Program parsed successfully");
         combined Table=new combined();
         Table.Table1.complete=false;
         root.accept(new GJDepthFirst(),Table); // Your assignment part is invoked here.
         Table.Table1.complete=true;
         
         Table.Table2=new hash_table();
         Table.Table2.construct(Table.Table1);
        
          if(Table.Table2.valid==false)
          {System.out.println("Type error" );} 
	else{         
      //   int type_check;
       
       
         root.accept(new GJDepthFirst(),Table);

	 if(Table.Table2.type_check==false)
          {System.out.println("Type error" );}
         else{System.out.println("Program type checked successfully");} 
         
         
        	}
         /*
         System.out.print("Main Class: " +True_Table.Main_class+"\n\n\n" );
         
         for(int i=0;i<Table.class_count;i++)
         {
         	System.out.print("Class: " +Table.class_list[i].name);
         	Classes c=Table.class_list[i];
         	if(c.parent)
         	{
         		System.out.print(" extends " +Table.class_list[i].parent_name);
         	}
         	System.out.print("\nvar_list: ");
         	for(int j=0;j<c.var_count;j++)
         	{
         		System.out.print(c.var_list[j].type+ " " +c.var_list[j].name+"  ,  " );
         	}
         	System.out.println("\nmethod_list: ");
         	
         	for(int j=0;j<c.method_count;j++)
         	{
         		Method m=c.method_list[j];
         		System.out.print(m.return_type +" " +m.name+"(");
         		for(int k=0;k<m.para_count;k++)
         		{
         		System.out.print(m.para_list[k].type+ " " +m.para_list[k].name+"  ,  " );
         		
         		}
         			System.out.println(")");
         		
         		System.out.print("\nvar_list: ");
         		for(int k=0;k<m.var_count;k++)
         		{
         			System.out.print(m.var_list[k].type+ " " +m.var_list[k].name+"  ,  " );
         		}
         			System.out.println("\n");
         		
         	}
         System.out.println("\n\n");
         }*/
         
      }
      catch (ParseException e) {
         System.out.println(e.toString());
      }
   }
} 







