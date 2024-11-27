package visitor;


public class Symbol_Table {

	public String Main_class;
	//String argument in main method ??
	
	public boolean complete;
	
	public int class_count;
	
	public Classes [] class_list;		
	
		
	
	public Symbol_Table()
	{
		class_count=0;
		class_list=new Classes [100];
		for(int i=0;i<100;i++)
		{
			class_list[i]=new Classes();
		}
	}
	
	
	


}


