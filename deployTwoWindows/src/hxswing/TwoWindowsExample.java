package hxswing;
import haxe.root.*;

@SuppressWarnings(value={"rawtypes", "unchecked"})
public  class TwoWindowsExample extends haxe.lang.HxObject
{
	public static void main(String[] args)
	{
		main();
	}
	public    TwoWindowsExample(haxe.lang.EmptyObject empty)
	{
		{
		}
		
	}
	
	
	public    TwoWindowsExample()
	{
		hxswing.TwoWindowsExample.__hx_ctor_hxswing_TwoWindowsExample(this);
	}
	
	
	public static   void __hx_ctor_hxswing_TwoWindowsExample(hxswing.TwoWindowsExample __temp_me6)
	{
		hxswing.WindowFrame windowFrame = null;
		{
			hxswing.WindowFrame wf = new hxswing.WindowFrame();
			wf.setTitle(haxe.lang.Runtime.toString("Haxe Java Example - windom 1"));
			wf.setSize(((int) (700) ), ((int) (500) ));
			windowFrame = wf;
		}
		
		windowFrame.paintView = ( (( hxswing.TwoWindowsExample___hx_ctor_hxswing_TwoWindowsExample_46__Fun.__hx_current != null )) ? (hxswing.TwoWindowsExample___hx_ctor_hxswing_TwoWindowsExample_46__Fun.__hx_current) : (hxswing.TwoWindowsExample___hx_ctor_hxswing_TwoWindowsExample_46__Fun.__hx_current = ((hxswing.TwoWindowsExample___hx_ctor_hxswing_TwoWindowsExample_46__Fun) (new hxswing.TwoWindowsExample___hx_ctor_hxswing_TwoWindowsExample_46__Fun()) )) );
		windowFrame.firstrender();
		hxswing.WindowFrame windowFrame2 = null;
		{
			hxswing.WindowFrame wf1 = new hxswing.WindowFrame();
			wf1.setTitle(haxe.lang.Runtime.toString("Haxe Java Example - window 2"));
			wf1.setSize(((int) (700) ), ((int) (500) ));
			windowFrame2 = wf1;
		}
		
		windowFrame2.paintView = ( (( hxswing.TwoWindowsExample___hx_ctor_hxswing_TwoWindowsExample_56__Fun.__hx_current != null )) ? (hxswing.TwoWindowsExample___hx_ctor_hxswing_TwoWindowsExample_56__Fun.__hx_current) : (hxswing.TwoWindowsExample___hx_ctor_hxswing_TwoWindowsExample_56__Fun.__hx_current = ((hxswing.TwoWindowsExample___hx_ctor_hxswing_TwoWindowsExample_56__Fun) (new hxswing.TwoWindowsExample___hx_ctor_hxswing_TwoWindowsExample_56__Fun()) )) );
		windowFrame2.firstrender();
	}
	
	
	public static   void main()
	{
		new hxswing.TwoWindowsExample();
	}
	
	
	public static   java.lang.Object __hx_createEmpty()
	{
		return new hxswing.TwoWindowsExample(((haxe.lang.EmptyObject) (haxe.lang.EmptyObject.EMPTY) ));
	}
	
	
	public static   java.lang.Object __hx_create(haxe.root.Array arr)
	{
		return new hxswing.TwoWindowsExample();
	}
	
	
}


