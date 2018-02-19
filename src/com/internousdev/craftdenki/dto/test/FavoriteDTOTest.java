package com.internousdev.craftdenki.dto.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.internousdev.craftdenki.dto.CategoryDTO;
import com.internousdev.craftdenki.dto.LoginDTO;

public class FavoriteDTOTest {

	@Test
	public void testGetProductName1() {
		LoginDTO dto = new LoginDTO();
		String expected = "0";

		dto.setLoginId(expected);

		assertEquals(expected, dto.getLoginId());
	}

	@Test
	public void testGetProductName2() {
		CategoryDTO dto = new CategoryDTO();
		String expected = null;

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetProductName3() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetProductName4() {
		CategoryDTO dto = new CategoryDTO();
		String expected = " 　";

		dto.setId(expected);

		assertEquals(expected, dto.getId());

	}

	@Test
	public void testGetProductName5() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "aaaa";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetProductName6() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "AAAA";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetProductName7() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "ああああ";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetProductNameKana1() {
		LoginDTO dto = new LoginDTO();
		String expected = "0";

		dto.setLoginId(expected);

		assertEquals(expected, dto.getLoginId());
	}

	@Test
	public void testGetProductNameKana2() {
		CategoryDTO dto = new CategoryDTO();
		String expected = null;

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetProductNameKana3() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetProductNameKana4() {
		CategoryDTO dto = new CategoryDTO();
		String expected = " 　";

		dto.setId(expected);

		assertEquals(expected, dto.getId());

	}

	@Test
	public void testGetProductNameKana5() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "aaaa";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetProductNameKana6() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "AAAA";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetProductNameKana7() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "ああああ";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetImageFilePath1() {
		LoginDTO dto = new LoginDTO();
		String expected = "0";

		dto.setLoginId(expected);

		assertEquals(expected, dto.getLoginId());
	}

	@Test
	public void testGetImageFilePath2() {
		CategoryDTO dto = new CategoryDTO();
		String expected = null;

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetImageFilePath3() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetImageFilePath4() {
		CategoryDTO dto = new CategoryDTO();
		String expected = " 　";

		dto.setId(expected);

		assertEquals(expected, dto.getId());

	}

	@Test
	public void testGetImageFilePath5() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "aaaa";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetImageFilePath6() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "AAAA";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetImageFilePath7() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "ああああ";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetImageFileName1() {
		LoginDTO dto = new LoginDTO();
		String expected = "0";

		dto.setLoginId(expected);

		assertEquals(expected, dto.getLoginId());
	}

	@Test
	public void testGetImageFileName2() {
		CategoryDTO dto = new CategoryDTO();
		String expected = null;

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetImageFileName3() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetImageFileName4() {
		CategoryDTO dto = new CategoryDTO();
		String expected = " 　";

		dto.setId(expected);

		assertEquals(expected, dto.getId());

	}

	@Test
	public void testGetImageFileName5() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "aaaa";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetImageFileName6() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "AAAA";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetImageFileName7() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "ああああ";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetPrice1() {
		LoginDTO dto = new LoginDTO();
		String expected = "0";

		dto.setLoginId(expected);

		assertEquals(expected, dto.getLoginId());
	}

	@Test
	public void testGetPrice2() {
		CategoryDTO dto = new CategoryDTO();
		String expected = null;

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetPrice3() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetPrice4() {
		CategoryDTO dto = new CategoryDTO();
		String expected = " 　";

		dto.setId(expected);

		assertEquals(expected, dto.getId());

	}

	@Test
	public void testGetPrice5() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "aaaa";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetPrice6() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "AAAA";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetPrice7() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "ああああ";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetReleaseCompany1() {
		LoginDTO dto = new LoginDTO();
		String expected = "0";

		dto.setLoginId(expected);

		assertEquals(expected, dto.getLoginId());
	}

	@Test
	public void testGetReleaseCompany2() {
		CategoryDTO dto = new CategoryDTO();
		String expected = null;

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetReleaseCompany3() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetReleaseCompany4() {
		CategoryDTO dto = new CategoryDTO();
		String expected = " 　";

		dto.setId(expected);

		assertEquals(expected, dto.getId());

	}

	@Test
	public void testGetReleaseCompany5() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "aaaa";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetReleaseCompany6() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "AAAA";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetReleaseCompany7() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "ああああ";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetReleaseDate1() {
		LoginDTO dto = new LoginDTO();
		String expected = "0";

		dto.setLoginId(expected);

		assertEquals(expected, dto.getLoginId());
	}

	@Test
	public void testGetReleaseDate2() {
		CategoryDTO dto = new CategoryDTO();
		String expected = null;

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetReleaseDate3() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetReleaseDate4() {
		CategoryDTO dto = new CategoryDTO();
		String expected = " 　";

		dto.setId(expected);

		assertEquals(expected, dto.getId());

	}

	@Test
	public void testGetReleaseDate5() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "aaaa";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetReleaseDate6() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "AAAA";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetReleaseDate7() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "ああああ";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetProductId1() {
		LoginDTO dto = new LoginDTO();
		String expected = "0";

		dto.setLoginId(expected);

		assertEquals(expected, dto.getLoginId());
	}

	@Test
	public void testGetProductId2() {
		CategoryDTO dto = new CategoryDTO();
		String expected = null;

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetProductId3() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetProductId4() {
		CategoryDTO dto = new CategoryDTO();
		String expected = " 　";

		dto.setId(expected);

		assertEquals(expected, dto.getId());

	}

	@Test
	public void testGetProductId5() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "aaaa";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetProductId6() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "AAAA";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetProductId7() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "ああああ";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetId1() {
		LoginDTO dto = new LoginDTO();
		String expected = "0";

		dto.setLoginId(expected);

		assertEquals(expected, dto.getLoginId());
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
		CategoryDTO dto = new CategoryDTO();
		String expected = "";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetId4() {
		CategoryDTO dto = new CategoryDTO();
		String expected = " 　";

		dto.setId(expected);

		assertEquals(expected, dto.getId());

	}

	@Test
	public void testGetId5() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "aaaa";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetId6() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "AAAA";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

	@Test
	public void testGetId7() {
		CategoryDTO dto = new CategoryDTO();
		String expected = "ああああ";

		dto.setId(expected);

		assertEquals(expected, dto.getId());
	}

}
