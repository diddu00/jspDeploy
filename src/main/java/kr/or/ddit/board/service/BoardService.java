package kr.or.ddit.board.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import kr.or.ddit.board.model.BoardVo;

public class BoardService implements BoardServiceInf{

	@Override
	public List<BoardVo> getBoardList() {
		List<BoardVo>boardList = new ArrayList<BoardVo>();
		//db에서 조회가 되었다고 가정하고 임의의 값을 만듬
		boardList.add(new BoardVo("점심시간이 짧다", "생각보다 긴거같지않다", "diddu00", "어그래", new Date()));
		boardList.add(new BoardVo("저녁시간이 짧다", "생각보다 준내 짧다", "sisiba", "안그래", new Date()));
		boardList.add(new BoardVo("잠시간이 짧다", "순식간이다.", "ckemrfla2", "그래그래", new Date()));
		boardList.add(new BoardVo("게임하고싶다", "배그 샷발이 시원찮다.", "pooha-_-aaa", "다음그래", new Date()));
		boardList.add(new BoardVo("제목존나짓기 싫다", "내용도 쓰기싫다.", "zhfldksk2", "고래그래", new Date()));
		
		return boardList;
	}

}
