//  自分が格納されているフォルダ名
package beans;

public class Riyousha {

	// 属性
	private String id = null; 
	private String pass = null; 
	private String name = null; 

	// 初期値を引数に持ったコンストラクタ
	public Riyousha(String id, String pass, String name) {
        this.id = id;
        this.pass = pass;
        this.name = name;
    }

	// 初期値を引数に持たないコンストラクタ
	// Java beansは初期値を持たないコンストラクタが必ず必要
	public Riyousha() {
	}

    // setメソッド
    // Java beansのsetメソッドはsetの後ろに続く文字列が必ず大文字である
    public void setId(String id) {
        this.id = id;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public void setName(String name) {
        this.name = name;
    }

    // getメソッド
    // Java beansのgetメソッドはgetの後ろに続く文字列が必ず大文字であること
    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public String getPass() {
        return this.pass;
    }
}
