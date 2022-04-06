package mit.teamnull.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import mit.teamnull.domain.QuizVO;
import mit.teamnull.mapper.QuizMapper;

@AllArgsConstructor
@Service
public class QuizServiceImpl implements QuizService {
	
	private QuizMapper mapper;

	@Override
	public List<QuizVO> list() {
		return mapper.list();
	}

	@Override
	public void grAdd(int num1, int num2) {
		mapper.insert(num1, num2);
	}
	
}



