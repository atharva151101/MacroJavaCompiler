package visitor;
import java.util.*;

public class hash_table {

	public int temp;
	public String main_class;
	public HashMap<String,String> current_scope;
	public String current_class;
	public String current_method;
	public String called_class;
	public String called_method;
	public HashMap<String, hash_class> class_map;
	public int label;
	public String prim_expr;
	public String expr;
	public boolean in_prim_expr;
	
	public hash_table()
	{
		temp=0;label=0;
		in_prim_expr=false;
		current_class="Main";
		class_map= new HashMap<String, hash_class>();
	}
	
	public void construct(Symbol_Table Table){	
		
		hash_class h_C1=new hash_class();
		main_class=Table.Main_class;
		h_C1.name=Table.Main_class;
		h_C1.parent=false;
		class_map.put(Table.Main_class,h_C1);
		
		for(int i=0;i<Table.class_count;i++)
		{
			Classes C=Table.class_list[i];
			
			hash_class h_C=new hash_class();
			h_C.construct(C,Table);
			
			class_map.put(C.name, h_C);
			
		}	
	}
	
}


