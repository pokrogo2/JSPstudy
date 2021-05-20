package json_simple;

import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class Ex01_JSONObject {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		//map리뷰
		Map<String, Object> map= new HashMap<>();
		
		map.put("name","브레드");
		map.put("age",50);
		System.out.println("이름 : " + map.get("name"));
		System.out.println("나이 : " + map.get("age"));
		//네이버가 우리에게 전달해준 json이라고 생각
		String responseData="{\"name\" : \"브레드\",\"age\":50}";
		System.out.println(responseData);
		//json-simple-1.1.1.jar라이브러리
		//구글에서제공
		//json을 자바map형식으로 변호나
		//map인터페이스를 구현한  jsonObject클래스를 지원
		
		//String JSON 데이터 =>JSONObject
		//구문 분석기를 준비한다.
		JSONParser parser = new JSONParser();
		//String Json데이터 =>json object 단계 1
		//구문 분석 (파싱)
		// JSONObject obj= (JSONObject)parser.parse(responseData);예외처리필요
		JSONObject obj =null;
			try {
				obj=(JSONObject)parser.parse(responseData);
		}catch(Exception e) {
			e.printStackTrace();
		}
			System.out.println("이름 : " + obj.get("name"));
			System.out.println("나이 : " + obj.get("age"));
	
	}

}
