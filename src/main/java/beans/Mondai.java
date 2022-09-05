//  自分が格納されているフォルダ名
package beans;

import java.io.Serializable;

public class Mondai implements Serializable {

	private static final long serialVersionUID = 1L;
	private String id;
	private Integer mid;
	private String title;
	private String age;
	private String mondai;

	// コンストラクタ(引数あり)
	public Mondai(String id, Integer mid, String title, String age, String mondai) {
		this.id = id;
		this.mid = mid;
		this.title = title;
		this.age = age;
		this.mondai = mondai;
	}

	// コンストラクタ(引数なし)
	public Mondai() {
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Integer getMid() {
		return mid;
	}

	public void setMid(Integer mid) {
		this.mid = mid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getMondai() {
		return mondai;
	}

	public void setMondai(String mondai) {
		this.mondai = mondai;
	}

}