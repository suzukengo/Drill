
//　自分が格納されているフォルダ名
package dao;

//  自分が格納されているフォルダの外にある必要なクラス
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import beans.Login;
import beans.Riyousha;

public class RiyoushaDAO {

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
	private final static String USER_NAME = "kengo";
    //private final static String USER_NAME = "root";
	
	// データベースのユーザーのパスワード (デフォルトでは設定なし)
	private final static String PASSWORD = "Suzuki1021#";
	//private final static String PASSWORD = "";
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
	public void registRiyousha(Riyousha riyousha, Connection connection) {

		try {

			// SQLコマンド
			String sql = "insert into user(id, pass, name) values(?, ?, ?)";

			// SQLコマンドの実行
			PreparedStatement stmt = connection.prepareStatement(sql);

			// SQLコマンドのクエッションマークに値を、1番目から代入する
			stmt.setString(1, riyousha.getId());
			stmt.setString(2, riyousha.getPass());
			stmt.setString(3, riyousha.getName());

			stmt.executeUpdate();

		} catch (SQLException e) {

			// エラーが発生した場合、エラーの原因を出力する
			e.printStackTrace();

		} finally {
		}
	}

	// 検索する
	// 引数はStudentオブジェクトと、Connectionオブジェクト
	public Riyousha searchRiyousha(Riyousha riyousha, Connection connection) {

		try {
			// SQLコマンド
			String sql = "select * from user where id = ? ";

			// SQLのコマンドを実行する
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, riyousha.getId());
			// 実行結果はrsに格納される
			ResultSet rs = stmt.executeQuery();

			if (rs.first()) { // DBに存在した場合
				// rsからそれぞれの情報を取り出し、Studentオブジェクトに設定する
				riyousha.setId(rs.getString("id"));
				riyousha.setName(rs.getString("name"));
			} else { // DBに存在しなかった場合
				riyousha = null; // studentオブジェクトをnullにする
			}

			// 終了処理
			stmt.close();
			rs.close();

			// Studentオブジェクトを返す
			return riyousha;

		} catch (SQLException e) {

			// エラーが発生した場合、エラーの原因を出力し、nullオブジェクトを返す
			e.printStackTrace();
			return null;

		} finally {
		}
	}

	public Login loginRiyousha(Login login, Connection connection) {
		Connection conn = null;

		try {

			// SQLコマンド
			String sql = "select id,pass from user where id = ? and pass=?";

			// SQLのコマンドを実行する
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, login.getId());
			stmt.setString(2, login.getPass());

			// 実行結果はrsに格納される
			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				// 結果表からデータを取得
				String id = rs.getString("id");
				String pass = rs.getString("pass");
				login = new Login(id, pass);
				return login;
			}

			// 終了処理
			stmt.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
					return null;
				}
			}
		}
		return null;
	}
}
