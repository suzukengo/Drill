//　自分が格納されているフォルダ名
package control;

//  自分が格納されているフォルダの外にある必要なクラス
import java.sql.Connection;

import beans.Mondai;
import dao.MondaiDAO;

public class MondaiManager {

	// 属性
	private Connection connection = null;

	// 引数を持たないコンストラクタ
	public MondaiManager() {
	}

	// 追加
	// 引数はmondaiオブジェクト
	public void registMondai(Mondai mondai) {

		// MondaiDAOオブジェクト生成
		MondaiDAO mondaiDAO = new MondaiDAO();

		// DataBaseへ接続し、コネクションオブジェクトを生成する
		this.connection = mondaiDAO.createConnection();

		// MondaiオブジェクトをDataBaseに登録する
		mondaiDAO.registMondai(mondai, this.connection);

		// DataBaseとの接続を切断する
		mondaiDAO.closeConnection(this.connection);

		// コネクションオブジェクトを破棄する
		this.connection = null;

	}

	// 検索
	public Mondai searchMondai(Mondai mondai) {

		// MondaiDAOオブジェクト生成
		MondaiDAO mondaiDAO = new MondaiDAO();

		// DataBaseへ接続し、コネクションオブジェクトを生成する
		this.connection = mondaiDAO.createConnection();

		// 検索する
		mondai = mondaiDAO.searchMondai(mondai, this.connection);

		// DataBaseとの接続を切断する
		mondaiDAO.closeConnection(this.connection);

		// コネクションオブジェクトを破棄する
		this.connection = null;

		return mondai;
	}

}
