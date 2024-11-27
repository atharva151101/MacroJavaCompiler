
package visitor;
import java.util.*;
public class hash_method{

	public String return_type;
	public String name;
	public String type;
	
	
	public int var_count;
	public int para_count;
	public HashMap<String, Integer> para_arrs;
	public HashMap<String, Integer> var_arrs;
	public HashMap<String, Integer> para_map;
	public HashMap<String, Integer> var_map;
	public HashMap<String, String> para_map2;
	public HashMap<String, String> var_map2;
	
	
	
	public hash_method()
	{
		
		
		para_map=new HashMap<String, Integer>();
		para_map2=new HashMap<String, String>();
		var_map=new HashMap<String, Integer>();
		var_map2=new HashMap<String, String>();
		para_arrs=new HashMap<String, Integer>();
		var_arrs=new HashMap<String, Integer>();
		
		
	}
	public void construct(HashMap<String, Integer> class_vars, Method M){
		
		return_type=M.return_type;
		type=M.type;
		name=M.name;
		
		para_count=M.para_count;
		var_count=M.var_count;
		
		
		for(int i=0;i<M.var_count;i++)
		{
		var_map2.put(M.var_list[i].name,M.var_list[i].type);	
		var_map.put(M.var_list[i].name,para_count+i+1);
			if(M.var_list[i].type=="int[]")
			{
				var_arrs.put(M.var_list[i].name,para_count+i+1);
			}
		}	
		
		for(int i=0;i<M.para_count;i++)
		{
			para_map2.put(M.para_list[i].name,M.para_list[i].type);
			para_map.put(M.para_list[i].name,i+1);
			if(M.para_list[i].type=="int[]")
			{
				var_arrs.put(M.para_list[i].name,i+1);
			}
		}
	}

}
