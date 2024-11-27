
package visitor;
public class Method{

	public String return_type;
	public String name;
	public String type;
	
	public IDENTIFIER [] para_list;
	public int para_count;
	
	public IDENTIFIER [] var_list;
	public int var_count;
	
	public Method()
	{
		para_count=0;
		var_count=0;
		para_list=new IDENTIFIER [100];
		for(int i=0;i<100;i++)
			para_list[i]=new IDENTIFIER();
			
		var_list=new IDENTIFIER [100];
		for(int i=0;i<100;i++)
			var_list[i]=new IDENTIFIER();	
		
	}

}
