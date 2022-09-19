
//　自分が格納されているフォルダ名
package dao;

//  自分が格納されているフォルダの外にある必要なクラス
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import beans.Mondai;

public class MondaiDAO {

	// 属性

	// データベースの接続先アドレスを静的変数として記述
	private final static String DRIVER_URL = "jdbc:mysql://localhost:3306/drill?characterEncoding=utf8&useSSL=false&serverTimezone=GMT%2B9:00&rewriteBatchedStatements=true";
	// DockerでMysqlを起動した場合
	// private final static String DRIVER_URL =
	// "jdbc:mysql://localhost:3307/student?characterEncoding=utf8&useSSL=false&serverTimezone=GMT%2B9:00&rewriteBatchedStatements=true";

	// データベース接続ドライバの名前を静的変数として記述
	// Mysql5.系
	// private final static String DRIVER_NAME = "com.mysql.jdbc.Driver";
	// Mysql8.系
	private final static String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";

	// データベースのユーザー名 （デフォルトではroot）
	private final static String USER_NAME = "root";

	// データベースのユーザーのパスワード (デフォルトでは設定なし)
	private final static String PASSWORD = "";
	// DockerでMysqlを起動した場合
	// private final static String PASSWORD = "root";

	// データベースとの接続を行う
	// データベースの接続情報を持ったConnectionオブジェクトを返す
	public Connection createConnection() {
		try {
			Class.forName(DRIVER_NAME);
			Connection con = DriverManager.getConnection(DRIVER_URL, USER_NAME, PASSWORD);
			return con;
		} catch (ClassNotFoundException e) {
			System.out.println("Can't Find JDBC Driver.\n");
		} catch (SQLException e) {
			System.out.println("Connect Error.\n");
		}
		return null;
	}

	// Connectionオブジェクトを使って、データベースとの接続を切断する
	// 引数Connectionオブジェクト
	public void closeConnection(Connection con) {

		try {
			con.close();
		} catch (Exception ex) {
		}
	}

	// 情報をデータベースに登録する
	// 引数はStudentオブジェクトと、Connectionオブジェクト
	public void registMondai(Mondai mondai, Connection connection) {

		try {

			// SQLコマンド
			String sql = "insert into mondai(id, mid, title,age,mondai) values(?, ?, ?,?,?)";

			// SQLコマンドの実行
			PreparedStatement stmt = connection.prepareStatement(sql);

			// SQLコマンドのクエッションマークに値を、1番目から代入する
			stmt.setString(1, mondai.getId());
			stmt.setInt(2, mondai.getMid());
			stmt.setString(3, mondai.getTitle());
			stmt.setString(4, mondai.getAge());
			stmt.setString(5, mondai.getMondai());

			stmt.executeUpdate();

		} catch (SQLException e) {

			// エラーが発生した場合、エラーの原因を出力する
			e.printStackTrace();

		} finally {
		}
	}

	// 検索する
	// 引数はStudentオブジェクトと、Connectionオブジェクト
	public Mondai searchMondai(Mondai mondai, Connection connection) {

		try {
			// SQLコマンド
			String sql = "select * from mondai where mid=?";

			// SQLのコマンドを実行する
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, mondai.getMid());
			// 実行結果はrsに格納される
			ResultSet rs = stmt.executeQuery();

			if (rs.first()) { // DBに存在した場合
				// rsからそれぞれの情報を取り出し、Studentオブジェクトに設定する
				mondai.setId(rs.getString("id"));
				mondai.setMid(rs.getInt("mid"));
				mondai.setTitle(rs.getString("title"));
				mondai.setAge(rs.getString("age"));
				mondai.setMondai(rs.getString("mondai"));
			} else { // DBに存在しなかった場合
				mondai = null; // studentオブジェクトをnullにする
			}

			// 終了処理
			stmt.close();
			rs.close();

			// Studentオブジェクトを返す
			return mondai;

		} catch (SQLException e) {

			// エラーが発生した場合、エラーの原因を出力し、nullオブジェクトを返す
			e.printStackTrace();
			return null;

		} finally {
		}
	}

}
