
package visitor;
import java.util.*;
public class hash_class{

	public String name;
	public boolean parent;
	public String parent_name;
	public HashMap<String, String> parents;
	public boolean valid;
	
	public HashMap<String, hash_method> method_map;
	
	public HashMap<String, String> class_vars;

	public hash_class()
	{
		valid=true;
		
		parents =new HashMap<String, String>();
		method_map=new HashMap<String, hash_method>();
		class_vars=new HashMap<String, String>();
	}
	public void construct(Classes C, Symbol_Table Table){	
		name=C.name;
		parent=C.parent;
		parent_name=C.parent_name;
		
		for(int i=0;i<C.var_count;i++)
		{
			if(class_vars.containsKey(C.var_list[i].name))
			{
				valid=false;
				return;
			}
			
			class_vars.put(C.var_list[i].name,C.var_list[i].type);
		}	
			Classes temp=C;
			while(temp.parent==true)
			{
				String par=temp.parent_name;
				parents.put(par,par);
				for(int j=0;j<Table.class_count;j++)
				{
					if(par==Table.class_list[j].name)
					{
						temp=Table.class_list[j];
						
						for(int k=0;k<temp.var_count;k++)
						{
							if(class_vars.containsKey(temp.var_list[k].name))
							{	
							continue;
							}	
							class_vars.put(temp.var_list[k].name,temp.var_list[k].type);
						}
						
						
					break;
					}
				}
			}
		
			
		for(int i=0;i<C.method_count;i++)
		{
			if(method_map.containsKey(C.method_list[i].name))
			{
				valid=false;
				return;
			}
			hash_method h_M;
			h_M=new hash_method();
			h_M.construct(class_vars,C.method_list[i]);
			if(h_M.valid==false)
			{
				valid=false;return;
			}
			method_map.put(C.method_list[i].name,h_M); 
		
		}
		
		temp=C;
		while(temp.parent==true)		
		{
			String par=temp.parent_name;
			//parents.put(par,par);
			for(int j=0;j<Table.class_count;j++)
			{
				if(par==Table.class_list[j].name)
				{
					temp=Table.class_list[j];
					
					for(int k=0;k<temp.method_count;k++)
					{
					
						if(temp.method_list[k].type=="private")
						{continue;}
						//System.out.println("here");
						if(method_map.containsKey(temp.method_list[k].name))
						{	
							
							hash_method hh_M=method_map.get(temp.method_list[k].name);
							if(temp.method_list[k].return_type!=hh_M.return_type )
							{
								valid=false;
								return;
							}
							if(temp.method_list[k].para_count!=hh_M.para_count){valid=false; return;}
							for(int l=0;l<temp.method_list[k].para_count;l++)
							{
								if(temp.method_list[k].para_list[l].type!=hh_M.para_list[l].type)
								{
									valid=false;
									return;	
								}
							}
							
							continue;
							
						}	
						
					}
						
						
				break;
				}
			}
		}	
	
	}
	
		
	

}
