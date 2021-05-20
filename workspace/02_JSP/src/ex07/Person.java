package ex07;

/*
 * 자바 빈개발 규약에의해 생성되는 클래스
 * 객체 저장용
 * 개발규약
 * 	1)반드시 특정 패키지에 소속
 * 	2)디폴트 생성자를 사용할 수 있어야함
 * 		-1.생성자를 안만든다
 * 		-2.필드를 이용한 생성자를 만드는 경우 디폴트를 함께 만든다.
 * 	3)getter/setter를 추가
 * 
 * 
 * */

public class Person{
	private String name;
	private int age;
	
	public Person() {}
	public Person(String name,int age) {
		this.name=name;
		this.age=age;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	//메소드
	
	
}