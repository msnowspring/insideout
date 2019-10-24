package webCrawling;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class ngo {
	public static void main(String[] args) {
		for(int n=1; n<3; n++) {
			String wurl = "http://www.withgo.or.kr/campaign/story_cam.asp?strArea=B&intCate=&intStat=1&intPage="+n+"#";
			String wselector = "div.camp_list>ul.clearfix";
		    Document wdoc = null;
		    
		    try {
		        wdoc = Jsoup.connect(wurl).get(); // 1. get방식의 URL에 연결해서 가져온 값을 doc에 담는다.
		    } catch (IOException e) {
		        System.out.println(e.getMessage());
		    }
		    
		    //메인 요소 선택
		    Elements withgo = wdoc.select(wselector);
		    
		    //withgo title
		    String[] wtitles = withgo.select("li>a>p.tit").html().split("\n");
		    for(int t=0; t<wtitles.length; t++) {
		    	System.out.println(wtitles[t]);
		    }
		    
		    //withgo img
		    
			String[] wimgs = withgo.select("li>a>div.thum").html().split("\n");
			for(int i=0; i<wtitles.length; i++) {
				wimgs[i] = "http://www.withgo.or.kr" + wimgs[i].substring(10,54);
				int idx = wimgs[i].indexOf('"');
				wimgs[i] = wimgs[i].substring(0,idx);
				System.out.println(wimgs[i]);
			}
			
		    
		    //withgo url
		    withgo.select("li>span").remove();
		    withgo.select("li>div").remove();
		    withgo.select("li>a>ul").remove();
		    withgo.select("li>a>div.thum").remove();
			String[] wurls = withgo.select("li").html().split("\n");
			
			
			for(int u=0; u<wtitles.length; u++) {
				wurls[u] = "http://www.withgo.or.kr" + wurls[u].substring(10, 98).replace('"',' ');
				System.out.println(wurls[u]);
			}
			
		}
		
		
		
	}
}
