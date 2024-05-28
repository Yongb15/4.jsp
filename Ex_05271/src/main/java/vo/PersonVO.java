package vo;

public class PersonVO {
	//VO : ValueObject – DB에서 넘어온 row의 정보를 저장하기 위한 클래스 개념

		//VO클래스에서 만드는 변수명은 실제 DB의 컬럼명과 똑같은 이름으로 만들어 주는 것이 	//좋다
		String name; //이름
		int age; //나이
		String tel; //전화번호
		
		public PersonVO( String name, int age, String tel) {
			this.name = name;
			this.age = age;
			this.tel = tel;
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

		public String getTel() {
			return tel;
		}

		public void setTel(String tel) {
			this.tel = tel;
		}
		
		
}
