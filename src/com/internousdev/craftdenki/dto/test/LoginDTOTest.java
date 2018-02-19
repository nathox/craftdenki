package com.internousdev.craftdenki.dto.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.internousdev.craftdenki.dto.LoginDTO;

public class LoginDTOTest {

	@Test
	public void testGetLoginId1() {
		LoginDTO dto = new LoginDTO();
		String expected = "0";

		dto.setLoginId(expected);

		assertEquals(expected, dto.getLoginId());
	}

	@Test
	public void testGetLoginId2() {
		LoginDTO dto = new LoginDTO();
		String expected = null;

		dto.setLoginId(expected);

		assertEquals(expected, dto.getLoginId());
	}

	@Test
	public void testGetLoginId3() {
		LoginDTO dto = new LoginDTO();
		String expected = "";

		dto.setLoginId(expected);

		assertEquals(expected, dto.getLoginId());
	}

	@Test
	public void testGetLoginId4() {
		LoginDTO dto = new LoginDTO();
		String expected = " 　";

		dto.setLoginId(expected);

		assertEquals(expected, dto.getLoginId());

	}

	@Test
	public void testGetLoginId5() {
		LoginDTO dto = new LoginDTO();
		String expected = "aaaa";

		dto.setLoginId(expected);

		assertEquals(expected, dto.getLoginId());
	}

	@Test
	public void testGetLoginId6() {
		LoginDTO dto = new LoginDTO();
		String expected = "AAAA";

		dto.setLoginId(expected);

		assertEquals(expected, dto.getLoginId());
	}

	@Test
	public void testGetLoginId7() {
		LoginDTO dto = new LoginDTO();
		String expected = "ああああ";

		dto.setLoginId(expected);

		assertEquals(expected, dto.getLoginId());
	}

	@Test
	public void testGetLoginPass1() {
		LoginDTO dto = new LoginDTO();
		String expected = "0";

		dto.setLoginPass(expected);

		assertEquals(expected, dto.getLoginPass());
	}

	@Test
	public void testGetLoginPass2() {
		LoginDTO dto = new LoginDTO();
		String expected = null;

		dto.setLoginPass(expected);

		assertEquals(expected, dto.getLoginPass());
	}

	@Test
	public void testGetLoginPass3() {
		LoginDTO dto = new LoginDTO();
		String expected = "";

		dto.setLoginPass(expected);

		assertEquals(expected, dto.getLoginPass());
	}

	@Test
	public void testGetLoginPass4() {
		LoginDTO dto = new LoginDTO();
		String expected = " 　";

		dto.setLoginPass(expected);

		assertEquals(expected, dto.getLoginPass());
	}

	@Test
	public void testGetLoginPass5() {
		LoginDTO dto = new LoginDTO();
		String expected = "aaaa";

		dto.setLoginPass(expected);

		assertEquals(expected, dto.getLoginPass());
	}

	@Test
	public void testGetLoginPass6() {
		LoginDTO dto = new LoginDTO();
		String expected = "AAAA";

		dto.setLoginPass(expected);

		assertEquals(expected, dto.getLoginPass());
	}

	@Test
	public void testGetLoginPass7() {
		LoginDTO dto = new LoginDTO();
		String expected = "ああああ";

		dto.setLoginPass(expected);

		assertEquals(expected, dto.getLoginPass());
	}

}
