//  自分が格納されているフォルダ名
package beans;

public class Login {
	private String id;
	private String pass;

	// コンストラクタ(引数あり)
	public Login(String id, String pass) {
		this.id = id;
		this.pass = pass;
	}

	public String getId() {
		return id;
	}

	public String getPass() {
		return pass;
	}
}