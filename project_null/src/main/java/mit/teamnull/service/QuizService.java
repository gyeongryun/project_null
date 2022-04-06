package mit.teamnull.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;

import mit.teamnull.domain.QuizVO;

public interface QuizService {
	

	public List<QuizVO> list();
	
	public void grAdd(int num1, int num2);
	
}
