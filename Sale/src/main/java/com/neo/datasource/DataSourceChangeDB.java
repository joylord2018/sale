package com.neo.datasource;

import org.aspectj.lang.JoinPoint;
public class DataSourceChangeDB {
	public Object changeDB(JoinPoint jp){
		//获取类名
		String path=jp.getTarget().getClass().getName();
		if(path.indexOf("Ord")==-1){
			System.out.println("使用系统数据库");
			DataSourceContextHolder.setDbType(DatasourceName.SYSTEMDATA);
		}else{
			System.out.println("使用订单数据库");
			DataSourceContextHolder.setDbType(DatasourceName.ORDERDATA);
		}
		return jp;
	}
}
