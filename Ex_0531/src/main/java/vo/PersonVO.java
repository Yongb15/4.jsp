package vo;

public class PersonVO {
	private String name;
	private int age;
	
	//필드를 매개변수로 갖는 생성자 만들기
	public PersonVO(String name, int age) {
		this.name = name;
		this.age = age;
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
	
}
