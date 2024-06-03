package Cart;
import java.util.*;
import java.io.*;
public class cart implements Serializable{
	float Sum=0;
	Hashtable<String,Integer>Goods=new Hashtable<String,Integer>();
    public void cart()
    {
    	
    }
    //获取每件商品的价格
    public float getPrice(String goodsname)
    {
    	if(goodsname.equals("mg"))
    		return Float.valueOf((float) 59.0);
    	else if(goodsname.equals("bh"))
    		return Float.valueOf((float)69.0);
    	else if(goodsname.equals("cw"))
    		return Float.valueOf((float)49.0);
    	else if(goodsname.equals("knx"))
    		return Float.valueOf((float)79.0);
    	else
    		return Float.valueOf((float)0);
    }
    //将某个商品信息加入购物车
    public void add(String GoodsName,int GoodsNumber)
    {
    	if(Goods.containsKey(GoodsName))
    	{
    		int Num=((Integer)Goods.get(GoodsName)).intValue();
    		Num=Num+GoodsNumber;
    		Goods.put(GoodsName, Integer.valueOf(Num));
    		Sum=Sum+getPrice(GoodsName)*GoodsNumber;
    	}
    	else {
    		Goods.put(GoodsName, Integer.valueOf(GoodsNumber));
    		Sum=Sum+getPrice(GoodsName)*GoodsNumber;
    	}
    }
    //获取购物车所有商品信息
    public Hashtable<String,Integer> ShowCartInf()
    {
    	return Goods;
    }
    //从购物车中删除一件商品信息
    public void delete(String GoodsName)
    {
    	int GoodsNum=((Integer)Goods.get(GoodsName)).intValue();
    	Goods.remove(GoodsName);
    	Sum=Sum-getPrice(GoodsName)*GoodsNum;
    }
    //清空购物车
    public void deleteall()
    {
    	 Enumeration e=Goods.keys();
    	  while(e.hasMoreElements())
    	   {
    		   String name=e.nextElement().toString();
    		   delete(name);
    	   }
    }
    //获取购物车内商品总价格
    public float getSum()
    {
    	return Sum;
    }
}
