package visitor;
import java.util.*;

public class hash_table {

	public String Main_class;
	//String argument in main method ??
	
	public HashMap<String,String> current_scope;
	public String current_class;
	public String current_method;
	public boolean ident_type;
	public String called_class;
	public String called_method;
	public boolean in_expr;
	public String expr_type;
	public String prim_expr_type;
	public int para_index;
	public boolean type_check;
	public boolean valid;
	
	public HashMap<String, hash_class> class_map;
		
	
		
	
	public hash_table()
	{
		in_expr=false;
		ident_type=false;
		type_check=true;
		class_map= new HashMap<String, hash_class>();
		valid=true;
	}
	public void construct(Symbol_Table Table){	
		Main_class=Table.Main_class;
		for(int i=0;i<Table.class_count;i++)
		{
			Classes C=Table.class_list[i];
			if(C.name==Main_class || class_map.containsKey(C.name) )
			{
				valid=false;
				
				return;
			}
			
			hash_class h_C=new hash_class();
			h_C.construct(C,Table);
			if(h_C.valid==false)
			{
				valid=false;
				return;
			}
			class_map.put(C.name, h_C);
			
		}	
	}
	
}


