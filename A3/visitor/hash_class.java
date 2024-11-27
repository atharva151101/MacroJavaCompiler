
package visitor;
import java.util.*;
public class hash_class{

	public String name;
	public boolean parent;
	public String parent_name;
	public int var_count;
	public HashMap<String, hash_method> method_map;
	public HashMap<String,Integer> class_arrs;
	public HashMap<String, Integer> class_vars;
	public HashMap<String, String> class_vars2;

	public hash_class()
	{
		method_map=new HashMap<String, hash_method>();
		class_vars=new HashMap<String, Integer>();
		class_vars2=new HashMap<String, String>();
		class_arrs=new HashMap<String, Integer>();
	}
	public void construct(Classes C, Symbol_Table Table){	
		name=C.name;
		parent=C.parent;
		parent_name=C.parent_name;
		var_count=C.var_count;
		for(int i=0;i<C.var_count;i++)
		{
			class_vars.put(C.var_list[i].name,i+1);
			class_vars2.put(C.var_list[i].name,C.var_list[i].type);
			if(C.var_list[i].type=="int[]")
			{
				class_arrs.put(C.var_list[i].name,i);
			}
		}		
			
		for(int i=0;i<C.method_count;i++)
		{
			
			hash_method h_M;
			h_M=new hash_method();
			h_M.construct(class_vars,C.method_list[i]);
			
			method_map.put(C.method_list[i].name,h_M); 
		
		}
		
			
			
	
	}
	
		
	

}
