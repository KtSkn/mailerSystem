package jp.org.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import jp.org.domain.ReceiveMail;

@Service
public interface MailService {
    public List<ReceiveMail> findAll();
    
//    public List<Movie> findRank();
//    
//    public Map<Integer, String> categoryAll(Map<Integer , String> interests);
//    
//    public Map<Integer, String> categoryAll2();
//    
//    public Map<Integer,String> getTypes();
//
//	public List<Movie> gethyouka(List<Movie> movie ,String name);
//    
//    public Movie findById(int id) throws DataNotFoundException;
//    
//    public void insertpoint(Movie movie ,Object name);//	評価ポイント追加
//
//    public void update(Movie movie) throws DataNotFoundException;//映画編集
//    
//    public Movie insert(Movie movie);//映画追加
//
//	public void addCategory(Category category);//カテゴリー追加
//	
//	public void userinsert(User user);//ユーザ追加
}
