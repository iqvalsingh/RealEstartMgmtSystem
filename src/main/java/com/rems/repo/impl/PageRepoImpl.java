/**
 * 
 */
package com.rems.repo.impl;

import org.springframework.stereotype.Repository;

import com.rems.bo.Page;
import com.rems.repo.PageRepo;

/**
 * @author Satbir Kaur
 *
 */
@Repository
public class PageRepoImpl extends CommonRepoImpl implements PageRepo
{

	@Override
	public Page getPageByPageType(String pageType)
	{
		Page			page	= null;
		StringBuffer	query	= new StringBuffer("from Page where pageType=");
		query.append("'").append(pageType).append("'");
		page = (Page) entityManager.createQuery(query.toString()).getSingleResult();

		return page;
	}

}
