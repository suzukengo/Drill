//　自分が格納されているフォルダ名
package control;

import java.security.MessageDigest;
//  自分が格納されているフォルダの外にある必要なクラス
import java.sql.Connection;

import beans.Login;
import beans.Riyousha;
import dao.RiyoushaDAO;

public class RiyoushaManager {

	// 属性
	private Connection connection = null;

	// 引数を持たないコンストラクタ
	public RiyoushaManager() {
	}

	// 追加
	// 引数はRiyoushaオブジェクト
	public void registRiyousha(Riyousha riyousha) {

		// RiyoushaDAOオブジェクト生成
		RiyoushaDAO riyoushaDAO = new RiyoushaDAO();

		// DataBaseへ接続し、コネクションオブジェクトを生成する
		this.connection = riyoushaDAO.createConnection();

		// RiyoushaオブジェクトをDataBaseに登録する
		riyoushaDAO.registRiyousha(riyousha, this.connection);

		// DataBaseとの接続を切断する
		riyoushaDAO.closeConnection(this.connection);

		// コネクションオブジェクトを破棄する
		this.connection = null;

	}

	// 検索
	public Riyousha searchRiyousha(Riyousha riyousha) {

		// RiyoushaDAOオブジェクト生成
		RiyoushaDAO riyoushaDAO = new RiyoushaDAO();

		// DataBaseへ接続し、コネクションオブジェクトを生成する
		this.connection = riyoushaDAO.createConnection();

		// 検索する
		riyousha = riyoushaDAO.searchRiyousha(riyousha, this.connection);

		// DataBaseとの接続を切断する
		riyoushaDAO.closeConnection(this.connection);

		// コネクションオブジェクトを破棄する
		this.connection = null;

		return riyousha;
	}

	public boolean loginRiyousha(Login login) {

		// RiyoushaDAOオブジェクト生成
		RiyoushaDAO riyoushaDAO = new RiyoushaDAO();

		// DataBaseへ接続し、コネクションオブジェクトを生成する
		this.connection = riyoushaDAO.createConnection();

		// 検索する

		login = riyoushaDAO.loginRiyousha(login, this.connection);

		// DataBaseとの接続を切断する
		riyoushaDAO.closeConnection(this.connection);

		// コネクションオブジェクトを破棄する
		this.connection = null;

		return login != null;
	}

	public 	StringBuilder SHA2(String password) {
		String text = password;
		byte[] cipher_byte;
		try{
				MessageDigest md = MessageDigest.getInstance("SHA-256");
				md.update(text.getBytes());
				cipher_byte = md.digest();
				StringBuilder sb = new StringBuilder(2 * cipher_byte.length);
				for(byte b: cipher_byte) {
						sb.append(String.format("%02x", b&0xff) );
				}
				System.out.println( sb );
				return sb;
		} catch (Exception e) {
				e.printStackTrace();
		}
		return null;
}

}
