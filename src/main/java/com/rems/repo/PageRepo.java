/**
 * 
 */
package com.rems.repo;

import com.rems.bo.Page;

/**
 * @author Satbir Kaur
 *
 */
public interface PageRepo extends CommonRepo
{

	public Page getPageByPageType(String pageType);
}
