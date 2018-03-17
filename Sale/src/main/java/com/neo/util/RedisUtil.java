package com.neo.util;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

import org.springframework.data.redis.core.RedisTemplate;
/**
 * redis分装类
 * @author nibin
 *
 */
public class RedisUtil {
	private RedisTemplate<String, Object> rt;

	public RedisTemplate<String, Object> getRt() {
		return rt;
	}

	public void setRt(RedisTemplate<String, Object> rt) {
		this.rt = rt;
	}
	//分装方法
	/**
	 * 获取普通对象
	 * @param key
	 * @return
	 */
	public Object get(String key){
		return rt.opsForValue().get(key);
	}
	//添加普通对象
	/**
	 * 添加普通对象
	 * @param key
	 * @param value
	 */
	public void set(String key,Object value){
		rt.opsForValue().set(key, value);
	}
	//获取list对象
	/**
	 * 获取list对象
	 * @param key
	 * @return
	 */
	public List<Object> getList(String key){
		
		return rt.opsForList().range(key, 0,-1);
	}
	//添加list对象
	public void setList(String key,List<?> value){
		rt.opsForList().leftPushAll(key, value);
	}
	
	/**
	 * //获取set对象
	 * @param key
	 * @return
	 */
	public Object getSet(String key){
		
		return rt.opsForSet().members(key);
	}
	//添加set对象
	public void setSet(String key,Set<?> value){
		rt.opsForSet().add(key, value);
	}

	/**
	 * 获取map对象
	 * @param key
	 * @return
	 */
	public Object getHash(String key){
		return rt.opsForHash().entries(key);
	}
	//添加map对象
	public void setHash(String key,Map<String,Object> value){
		rt.opsForHash().putAll(key, value);
	}
	//删除对象
	/**
	 * 删除对象
	 * @param key
	 * @return
	 */
	public void delete(String key){
		rt.delete(key);
	}
	
	public void settime(String key,long time,TimeUnit tu){
		rt.expire(key, time,tu);
	}
}
