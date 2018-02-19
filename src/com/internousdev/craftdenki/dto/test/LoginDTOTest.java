package com.internousdev.craftdenki.dto.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.internousdev.craftdenki.dto.CategoryDTO;
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
		CategoryDTO dto = new CategoryDTO();
		String expected = null;

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetLoginId3() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetLoginId4() {
		CategoryDTO dto = new CategoryDTO();
		String expected = " 　";

		dto.setId(expected);

		assertEquals(expected, dto.getId());

	}

	@Test
	public void testGetLoginId5() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "aaaa";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetLoginId6() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "AAAA";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetLoginId7() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "ああああ";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetLoginPass1() {
		LoginDTO dto = new LoginDTO();
		String expected = "0";

		dto.setLoginId(expected);

		assertEquals(expected, dto.getLoginId());
	}

	@Test
	public void testGetLoginPass2() {
		CategoryDTO dto = new CategoryDTO();
		String expected = null;

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetLoginPass3() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetLoginPass4() {
		CategoryDTO dto = new CategoryDTO();
		String expected = " 　";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetLoginPass5() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "aaaa";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetLoginPass6() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "AAAA";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetLoginPass7() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "ああああ";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

}
