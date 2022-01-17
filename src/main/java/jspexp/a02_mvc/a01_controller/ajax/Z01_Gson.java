package jspexp.a02_mvc.a01_controller.ajax;

import java.util.ArrayList;

import com.google.gson.Gson;

import jspexp.a03_database.A01_Dao;
import jspexp.z01_vo.Dept;
import jspexp.z01_vo.Emp;
import jspexp.z01_vo.Person;
import jspexp.z01_vo.Product;

public class Z01_Gson {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Person p01 = new Person("홍길동",25,"서울신림동");
		// 1. Gson 객체 생성.
		Gson gson = new Gson();
		// 2. 기능메서드를 통해서 json문자열 가져오기..
		String personJson = gson.toJson(p01);
		// 3. 확인..
		System.out.println(personJson);
		
		Product prod = new Product("사과",3000,2);
		String prodJson = gson.toJson(prod);
		System.out.println(prodJson);
		ArrayList<Product> plist = new ArrayList<Product>();
		plist.add(new Product("사과",3000,2));
		plist.add(new Product("바나나",4000,3));
		plist.add(new Product("딸기",12000,5));
		/*
		{} ==> []
		배열안에 객체 ==> [{},{},{}]	
		[
			{name:"사과",price:3000, cnt:2},
			{name:"바나나",price:4000, cnt:3},
			{name:"딸기",price:12000, cnt:5},
		] */
		String listJson = gson.toJson(plist);
		System.out.println(listJson);
		ArrayList<Emp> emplist = new ArrayList<Emp>();
		emplist.add(new Emp());
		emplist.add(new Emp("홍길동","사원",3500,"2022-04-30",10,7080));
		emplist.add(new Emp("홍길동","사원",3500,"2022-04-30",10,7080));
		emplist.add(new Emp("홍길동","사원",3500,"2022-04-30",10,7080));
		String empListJson = gson.toJson(emplist);
		System.out.println(empListJson);
		
		/*
		# dao를 통한 데이터 가져와서 json 데이터 처리
		 */
		A01_Dao dao = new A01_Dao();
		ArrayList<Emp> dbEmplist = dao.empListPre("","");
		String dbEmpJson = gson.toJson(dbEmplist);
		System.out.println(dbEmpJson);
		
		// ex) dao를 통하여 dept리스트를 json으로 출력
		ArrayList<Dept> dbDeptlist = dao.deptList("");
		String dbDeptJson = gson.toJson(dbDeptlist);
		System.out.println(dbDeptlist);
	}

}
