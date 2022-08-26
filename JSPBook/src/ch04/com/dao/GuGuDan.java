package ch04.com.dao;

import java.io.Serializable;

public class GuGuDan implements Serializable {

	public int[] process(int n){
		int[] arr = new int[9];
		for(int i=0; i<9; i++) {
			arr[i]=n*(i+1);
		}
		return arr;
	}
	
}