
package visitor;
import java.util.*;
public class hash_method{

	public String return_type;
	public String name;
	public String type;
	
	public boolean valid;
	
	public IDENTIFIER [] para_list;
	public int para_count;
	public HashMap<String, String> para_map;
	public HashMap<String, String> var_map;
	
	
	public hash_method()
	{
		
		
		para_map=new HashMap<String, String>();
		var_map=new HashMap<String, String>();
		
		valid=true;
	}
	public void construct(HashMap<String, String> class_vars, Method M){
		
		return_type=M.return_type;
		type=M.type;
		name=M.name;
		
		para_count=M.para_count;
		para_list=M.para_list;
		
		
		for(int i=0;i<M.var_count;i++)
		{
			if(var_map.containsKey(M.var_list[i].name))
			{
				valid=false;
				return;
			}
			
			var_map.put(M.var_list[i].name,M.var_list[i].type);
		}	
		
		for(int i=0;i<M.para_count;i++)
		{
			if(para_map.containsKey(M.para_list[i].name))
			{
				valid=false;
				return;
			}
			para_map.put(M.para_list[i].name,M.para_list[i].type);
			if(var_map.containsKey(M.para_list[i].name)==false)
			var_map.put(M.para_list[i].name,M.para_list[i].type);
			
		}
		for (Map.Entry<String, String> entry : class_vars.entrySet()) {
		
			String key=entry.getKey();
			String value=entry.getValue();
			
			if(var_map.containsKey(key)==false)
			{
				var_map.put(key,value);
			}
		}					
		int b=3;
		//System.out.print("adgbvased");
	}

}
