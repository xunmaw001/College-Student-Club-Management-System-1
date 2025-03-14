package com.entity.view;

import com.entity.ShetuanjingfeiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 社团经费
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-11-26 08:47:15
 */
@TableName("shetuanjingfei")
public class ShetuanjingfeiView  extends ShetuanjingfeiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShetuanjingfeiView(){
	}
 
 	public ShetuanjingfeiView(ShetuanjingfeiEntity shetuanjingfeiEntity){
 	try {
			BeanUtils.copyProperties(this, shetuanjingfeiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
