//　自分が格納されているフォルダ名
package control;

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

}
