package com.ptt.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ptt.model.UserVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class USERMAPPERtest {
	
	@Autowired
	//UserMapper.java 인터페이스 의존성 주입
	private UserMapper usermapper;
	
	/*
	//회원가입 쿼리 테스트 메서드
	
	 @Test
	 public void userJoin() throws Exception{
		 
		 UserVO user = new UserVO();
	  
		 user.setuID("test1"); //회원 id 
		 user.setuPW("test"); //회원 비밀번호
		 user.setuEMAIL("test"); //회원 이메일

	  
	 //쿼리 메서드 실행
		 usermapper.userJoin(user);

	 }
	 */
	
	// 아이디 중복검사
	@Test
	public void userIdChk() throws Exception{
		String id = "id";	// 존재하는 아이디
		String id2 = "test123";	// 존재하지 않는 아이디
		usermapper.idCheck(id);
		usermapper.idCheck(id2);
	}
}