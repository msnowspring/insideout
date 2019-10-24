package webCrawler;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class goodn_campaign {
	public static void main(String[] args) {
		//크롤링 할 페이지 url 지정
		String url = "http://www.goodneighbors.kr/support/campaign/campaignList.gn?top=3&left=2&type=front&progress=캠페인%20진행";
		String selector = "div.campaign_list";
		Document doc = null;    
		        
		try {
			doc = Jsoup.connect(url).get(); // 1. get방식의 URL에 연결해서 가져온 값을 doc에 담는다.
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
	
		System.out.println(doc);
		Elements campaign = doc.select("div.campaign_list");
		System.out.println(campaign);
		
		
//        //타이틀
//        String ctitle = campaign.select("p.campaign_title txtcut").html();
//        System.out.println(ctitle);
//        
//        //버튼
//        
//        //이미지
//        
        
	}
}
