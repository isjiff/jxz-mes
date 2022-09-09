package com.ktg.system.strategy;

import com.ktg.common.core.domain.entity.SysAutoCodePart;
import com.ktg.common.core.domain.entity.SysAutoCodeResult;
import com.ktg.system.service.IAutoCodeResultService;

import cn.hutool.core.collection.CollectionUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Component
@Order(1)
public class PartTypeNowDateHandler implements PartTypeTemplate {

	@Autowired
    private IAutoCodeResultService iAutoCodeResultService;
	
    @Override
    public String partHandle(SysAutoCodePart sysAutoCodePart) {
    	SysAutoCodeResult queryParam = new SysAutoCodeResult();
        queryParam.setRuleId(sysAutoCodePart.getRuleId());//ruleId要一致
        List<SysAutoCodeResult> rs = iAutoCodeResultService.list(queryParam);
        if(!CollectionUtil.isNotEmpty(rs)){
            AutoCodeUtil.threadLocal.set(true);//用于后续线程的判断，flag = true则表示数据库中没有当前规则的生成记录
        }
        String formatDate = sysAutoCodePart.getDateFormat();
        return DateTimeFormatter.ofPattern(formatDate).format(LocalDateTime.now());
    }
}
