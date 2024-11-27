#defineStmt myStmt(p,q,r,s) { p=q+r; s=p+q; }
#defineExpr myExpr(p,q,r,s) ( p+(q*(r+s)) )

#defineExpr1 kkk ( p ) ( p+(p) )

class LinkedList{
    public static void main(String[] a){
	System.out.println(new LL().Start());
    }
}


class LL{

    public int Start(){
		
		int a;
		int b;
		int c;
		int d;
		
		a=1;
		b=2;
		c=3;
		d=4;
		
		myStmt(kkk(a),b,c,d);
		System.out.println(myExpr(a,b,c,d));
		return 0;
		}
		}
