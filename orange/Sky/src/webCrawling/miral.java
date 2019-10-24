package webCrawling;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class miral {
	public static void main(String[] args) {
		for(int n=1; n<10; n++) {
			String murl = "http://www.miral.org/donate/special_list.asp?page="+n;
			String selector = "";
		    Document doc = null;
		    
		    try {
		        doc = Jsoup.connect(murl).get(); // 1. get방식의 URL에 연결해서 가져온 값을 doc에 담는다.
		    } catch (IOException e) {
		        System.out.println(e.getMessage());
		    }
		    
		    //메인 요소 선택
		    Elements miral = doc.select("div.special_donate_list>ul>li");
		    
		    
		    //nfound title
		    //String titles = miral.select("div.thumbnail>div.title>strong").html();
		    String[] titles = miral.select("div.thumbnail>div.title>strong").html().split("\n");
		    //System.out.println(titles);
		    
		    for(int t=0; t<titles.length; t++) {
		    	System.out.println(titles[t]);
		    }
		    
		    //gfound url
		    
		    		
			//이미지 안뽑아짐
			//gfound img
//		    Elements mimg = doc.select("ul>li>a>div.thumbnail>img");
//
//		    System.out.println(mimg);
		}
	}
}
