package com.org.oztt.base.common;

import java.util.List;

import com.org.oztt.entity.TGoodsClassfication;

/**
 * 菜单（因为这个的访问是最最频繁的所有需要用内存管理起来）
 * @author linliuan
 *
 */
public class MyCategroy {

	private TGoodsClassfication fatherClass;
	
	private List<MyCategroy> childrenClass;

	public TGoodsClassfication getFatherClass() {
		return fatherClass;
	}

	public void setFatherClass(TGoodsClassfication fatherClass) {
		this.fatherClass = fatherClass;
	}

	public List<MyCategroy> getChildrenClass() {
		return childrenClass;
	}

	public void setChildrenClass(List<MyCategroy> childrenClass) {
		this.childrenClass = childrenClass;
	}
	
	public MyCategroy() {
	}
	
	public MyCategroy(TGoodsClassfication classfication) {
		this.fatherClass = classfication;
	}

	
	
}
