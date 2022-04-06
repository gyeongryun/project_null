package mit.teamnull.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import mit.teamnull.domain.QuizVO;

public interface QuizMapper {
	
	public List<QuizVO> list();
	
	//2개 이상의 파라미터 값을 쿼리에 보내줄 경우 @Param이용
	public void insert(@Param("num1") int num1, @Param("num2") int num2);
	
}
