package com.internousdev.craftdenki.dto.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.internousdev.craftdenki.dto.CategoryDTO;

public class CategoryDTOTest {

	@Test
	public void testGetId1() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "0";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}


	@Test
	public void testGetId2() {
		CategoryDTO dto = new CategoryDTO();
		String expected = null;

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetId3() {
		fail("まだ実装されていません");
	}

	@Test
	public void testSetId() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetCategoryId() {
		fail("まだ実装されていません");
	}

	@Test
	public void testSetCategoryId() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetCategoryName() {
		fail("まだ実装されていません");
	}

	@Test
	public void testSetCategoryName() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetCategoryDescription() {
		fail("まだ実装されていません");
	}

	@Test
	public void testSetCategoryDescription() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetInsertDate() {
		fail("まだ実装されていません");
	}

	@Test
	public void testSetInsertDate() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetUpdateDate() {
		fail("まだ実装されていません");
	}

	@Test
	public void testSetUpdateDate() {
		fail("まだ実装されていません");
	}

}
