package webCrawling;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;


public class concern {
	public static void main(String[] args) {
		String courl = "https://www.concern.or.kr/load.asp?subPage=310#";
		String selector = "div.bbs_thumb_list>ul";
	    Document doc = null;
	    
	    try {
	        doc = Jsoup.connect(courl).get(); // 1. get방식의 URL에 연결해서 가져온 값을 doc에 담는다.
	    } catch (IOException e) {
	        System.out.println(e.getMessage());
	    }
	    
	    //메인 요소 선택
	    Elements concern = doc.select(selector);
	    
	    //concern title
	    String[] cotitles = concern.select("li>div.cont>div.tit>a>span").html().split("\n");
	    for(int t=0; t<cotitles.length; t++) {
	    	int idx = cotitles[t].indexOf(']');
	    	cotitles[t] = cotitles[t].substring(idx+2);
	    	System.out.println(cotitles[t]);
	    }
	    
	    //concern img
	    concern.select("li>a>div.over").remove();
		String[] coimgs = concern.select("li>a").html().split("\n");
		for(int i=0; i<coimgs.length; i++) {
			coimgs[i] = "https://www.concern.or.kr" + coimgs[i].substring(10, 63);
			System.out.println(coimgs[i]);
		}
	    
	    //concern url
		concern.select("li>div.cont>div.tit>div.date").remove();
		concern.select("li>div.cont>div.tit>a>span").remove();
		String[] courls = concern.select("li>div.cont>div.tit").html().split("\n");
		for(int u=0; u<courls.length; u++) {
			if(u<2) {
				courls[u] = "https://www.concern.or.kr" + courls[u].substring(63, 174);
				courls[u] = courls[u].replace('"',' ');
				courls[u] = courls[u].replace("'"," ");
				System.out.println(courls[u]);
			}else {
				courls[u] = "https://www.concern.or.kr" + courls[u].substring(10, 91);
				System.out.println(courls[u]);
			}
			
		}

	}
}
