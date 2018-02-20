package com.internousdev.craftdenki.dto.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.internousdev.craftdenki.dto.Review2DTO;

public class ProductDTOTest {



	public void testGetCategoryName1() {
		Review2DTO dto = new Review2DTO();
		String expected = "0";

		dto.setCategoryName(expected);

		assertEquals(expected, dto.getCategoryName());
	}

	@Test
	public void testGetCategoryName2() {
		Review2DTO dto = new Review2DTO();
		String expected = null;

		dto.setCategoryName(expected);

		assertEquals(expected, dto.getCategoryName());
	}

	@Test
	public void testGetCategoryName3() {
		Review2DTO dto = new Review2DTO();
		String expected = "";

		dto.setCategoryName(expected);

		assertEquals(expected, dto.getCategoryName());
	}

	@Test
	public void testGetCategoryName4() {
		Review2DTO dto = new Review2DTO();
		String expected = " 　";

		dto.setCategoryName(expected);

		assertEquals(expected, dto.getCategoryName());

	}

	@Test
	public void testGetCategoryName5() {
		Review2DTO dto = new Review2DTO();
		String expected = "aaaa";

		dto.setCategoryName(expected);

		assertEquals(expected, dto.getCategoryName());
	}

	@Test
	public void testGetCategoryName6() {
		Review2DTO dto = new Review2DTO();
		String expected = "AAAA";

		dto.setCategoryName(expected);

		assertEquals(expected, dto.getCategoryName());
	}

	@Test
	public void testGetCategoryName7() {
		Review2DTO dto = new Review2DTO();
		String expected = "ああああ";

		dto.setCategoryName(expected);

		assertEquals(expected, dto.getCategoryName());
	}


	@Test
	public void testGetId() {
		fail("まだ実装されていません");
	}




	@Test
	public void testGetId1() {
		Review2DTO dto = new Review2DTO();
		int expected = 0;

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetId2() {
		Review2DTO dto = new Review2DTO();
		int expected = 1;

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetId3() {
		Review2DTO dto = new Review2DTO();
		int expected = 12345678;

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetProduct_id1() {
		Review2DTO dto = new Review2DTO();
		int expected = 0;

		dto.setProduct_id(expected);

		assertEquals(expected, dto.getProduct_id());
	}

	@Test
	public void testGetProduct_id2() {
		Review2DTO dto = new Review2DTO();
		int expected = 1;

		dto.setProduct_id(expected);

		assertEquals(expected, dto.getProduct_id());
	}

	@Test
	public void testGetProduct_id3() {
		Review2DTO dto = new Review2DTO();
		int expected = 12345678;

		dto.setProduct_id(expected);

		assertEquals(expected, dto.getProduct_id());
	}



	@Test
	public void testGetProduct_name1() {
		Review2DTO dto = new Review2DTO();
		String expected = "0";

		dto.setProduct_name(expected);

		assertEquals(expected, dto.getProduct_name());
	}

	@Test
	public void testGetProduct_name2() {
		Review2DTO dto = new Review2DTO();
		String expected = null;

		dto.setProduct_name(expected);

		assertEquals(expected, dto.getProduct_name());
	}

	@Test
	public void testGetProduct_name3() {
		Review2DTO dto = new Review2DTO();
		String expected = "";

		dto.setProduct_name(expected);

		assertEquals(expected, dto.getProduct_name());
	}

	@Test
	public void testGetProduct_name4() {
		Review2DTO dto = new Review2DTO();
		String expected = " 　";

		dto.setProduct_name(expected);

		assertEquals(expected, dto.getProduct_name());

	}

	@Test
	public void testGetProduct_name5() {
		Review2DTO dto = new Review2DTO();
		String expected = "aaaa";

		dto.setProduct_name(expected);

		assertEquals(expected, dto.getProduct_name());
	}

	@Test
	public void testGetProduct_name6() {
		Review2DTO dto = new Review2DTO();
		String expected = "AAAA";

		dto.setProduct_name(expected);

		assertEquals(expected, dto.getProduct_name());
	}

	@Test
	public void testGetProduct_name7() {
		Review2DTO dto = new Review2DTO();
		String expected = "ああああ";

		dto.setProduct_name(expected);

		assertEquals(expected, dto.getProduct_name());
	}


	@Test
	public void testGetProduct_name_kana() {
		fail("まだ実装されていません");
	}


	@Test
	public void testGetProduct_id1() {
		Review2DTO dto = new Review2DTO();
		int expected = 0;

		dto.setProduct_id(expected);

		assertEquals(expected, dto.getProduct_id());
	}

	@Test
	public void testGetProduct_id2() {
		Review2DTO dto = new Review2DTO();
		int expected = 1;

		dto.setProduct_id(expected);

		assertEquals(expected, dto.getProduct_id());
	}

	@Test
	public void testGetProduct_id3() {
		Review2DTO dto = new Review2DTO();
		int expected = 12345678;

		dto.setProduct_id(expected);

		assertEquals(expected, dto.getProduct_id());
	}



	@Test
	public void testGetProduct_name1() {
		Review2DTO dto = new Review2DTO();
		String expected = "0";

		dto.setProduct_name(expected);

		assertEquals(expected, dto.getProduct_name());
	}

	@Test
	public void testGetProduct_name2() {
		Review2DTO dto = new Review2DTO();
		String expected = null;

		dto.setProduct_name(expected);

		assertEquals(expected, dto.getProduct_name());
	}

	@Test
	public void testGetProduct_name3() {
		Review2DTO dto = new Review2DTO();
		String expected = "";

		dto.setProduct_name(expected);

		assertEquals(expected, dto.getProduct_name());
	}

	@Test
	public void testGetProduct_name4() {
		Review2DTO dto = new Review2DTO();
		String expected = " 　";

		dto.setProduct_name(expected);

		assertEquals(expected, dto.getProduct_name());

	}

	@Test
	public void testGetProduct_name5() {
		Review2DTO dto = new Review2DTO();
		String expected = "aaaa";

		dto.setProduct_name(expected);

		assertEquals(expected, dto.getProduct_name());
	}

	@Test
	public void testGetProduct_name6() {
		Review2DTO dto = new Review2DTO();
		String expected = "AAAA";

		dto.setProduct_name(expected);

		assertEquals(expected, dto.getProduct_name());
	}

	@Test
	public void testGetProduct_name7() {
		Review2DTO dto = new Review2DTO();
		String expected = "ああああ";

		dto.setProduct_name(expected);

		assertEquals(expected, dto.getProduct_name());
	}



	@Test
	public void testGetProduct_description() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetCategory_id() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetPrice() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetImage_file_path() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetImage_file_name() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetRelease_date() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetRelease_company() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetRegist_date() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetUpdate_date() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetItem_stock() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetCurrent_cost() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetSupplyCount() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetSupplyCost() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetSupplyCostTotal() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetProduct_count() {
		fail("まだ実装されていません");
	}

}
