package com.internousdev.craftdenki.dto.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.internousdev.craftdenki.dto.CartDTO;

public class Review2DTOTest {


	
	@Test
	public void testGetId1() {
		CartDTO dto = new CartDTO();
		int expected = 0;

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetProductId2() {
		CartDTO dto = new CartDTO();
		int expected = 1;

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetProductId3() {
		CartDTO dto = new CartDTO();
		int expected = 12345678;

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}


	
	
	@Test
	public void testGetProduct_id1() {
		CartDTO dto = new CartDTO();
		int expected = 0;

		dto.setProduct_id(expected);

		assertEquals(expected, dto.getProduct_id());
	}

	@Test
	public void testGetProduct_id2() {
		CartDTO dto = new CartDTO();
		int expected = 1;

		dto.setProduct_id(expected);

		assertEquals(expected, dto.getProduct_id());
	}

	@Test
	public void testGetProduct_id3() {
		CartDTO dto = new CartDTO();
		int expected = 12345678;

		dto.setProduct_id(expected);

		assertEquals(expected, dto.getProduct_id());
	}

	
	@Test
	public void testGetEvaluation_count1() {
		CartDTO dto = new CartDTO();
		int expected = 0;

		dto.setProduct_id(expected);

		assertEquals(expected, dto.getUser_id());
	}

	@Test
	public void testGetEvaluation_count2() {
		CartDTO dto = new CartDTO();
		int expected = 1;

		dto.setUser_id(expected);

		assertEquals(expected, dto.getEvaluation_count());
	}

	@Test
	public void testGetEvaluation_count3() {
		CartDTO dto = new CartDTO();
		int expected = 12345678;

		dto.setUser_id(expected);

		assertEquals(expected, dto.getEvaluation_count());
	}




	public void testGetUser_id() {
		CartDTO dto = new CartDTO();
		String expected = "0";

		dto.setUser_id(expected);

		assertEquals(expected, dto.getProductName());
	}

	@Test
	public void testGetUser_id() {
		CartDTO dto = new CartDTO();
		String expected = null;

		dto.setUser_id(expected);

		assertEquals(expected, dto.getProductName());
	}

	@Test
	public void testGetUser_id() {
		CartDTO dto = new CartDTO();
		String expected = "";

		dto.setUser_id(expected);

		assertEquals(expected, dto.getProductName());
	}

	@Test
	public void testGetUser_id() {
		CartDTO dto = new CartDTO();
		String expected = " 　";

		dto.setProductName(expected);

		assertEquals(expected, dto.getProductName());

	}

	@Test
	public void testGetUser_id() {
		CartDTO dto = new CartDTO();
		String expected = "aaaa";

		dto.setProductName(expected);

		assertEquals(expected, dto.getProductName());
	}

	@Test
	public void testGetUser_id() {
		CartDTO dto = new CartDTO();
		String expected = "AAAA";

		dto.setProductName(expected);

		assertEquals(expected, dto.getProductName());
	}

	@Test
	public void testGetUser_id() {
		CartDTO dto = new CartDTO();
		String expected = "ああああ";

		dto.setProductName(expected);

		assertEquals(expected, dto.getProductName());
	}



	@Test
	public void testSetUser_id() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetReview_id() {
		fail("まだ実装されていません");
	}

	@Test
	public void testSetReview_id() {
		fail("まだ実装されていません");
	}

	@Test
	public void testGetBuy_item_date() {
		fail("まだ実装されていません");
	}

	@Test
	public void testSetBuy_item_date() {
		fail("まだ実装されていません");
	}

}
