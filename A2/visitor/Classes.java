
package visitor;

public class Classes{

	public String name;
	public boolean parent;
	public String parent_name;
	public boolean variables_obtained;
	
	public int method_count;
	public Method [] method_list;
	
	public IDENTIFIER [] var_list;
	public int var_count;

	public Classes()
	{
		method_count=0;
		var_count=0;
		
		var_list=new IDENTIFIER [100];
		for(int i=0;i<100;i++)
			var_list[i]=new IDENTIFIER();
			
		method_list=new Method [100];
		for(int i=0;i<100;i++)
			method_list[i]=new Method();
	
	}
	

}
