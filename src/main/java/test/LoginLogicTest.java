package test;

import beans.Login;
import control.RiyoushaManager;

public class LoginLogicTest {
	public static void main(String[] args) {
		testExecute1(); // ログイン成功のテスト
		testExecute2(); // ログイン失敗のテスト
	}

	public static void testExecute1() {
		Login login = new Login("ID001", "password");
		RiyoushaManager bo = new RiyoushaManager();
		boolean result = bo.loginRiyousha(login);
		System.out.println(result);
		if (result) {
			System.out.println("testExcecute1:成功しました");
		} else {
			System.out.println("testExcecute1:失敗しました");
		}
	}

	public static void testExecute2() {
		Login login = new Login("ID001100", "password100");
		RiyoushaManager bo = new RiyoushaManager();
		boolean result = bo.loginRiyousha(login);
		System.out.println(result);
		if (!result) {
			System.out.println("testExcecute2:成功しました");
		} else {
			System.out.println("testExcecute2:失敗しました");
		}
	}
}