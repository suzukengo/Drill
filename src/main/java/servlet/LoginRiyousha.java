package servlet;

//自分が格納されているフォルダの外にある必要なクラス
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Login;
import control.RiyoushaManager;

@WebServlet("/LoginRiyousha")
// HttpServletを継承することで、このクラスはServletとして、働くことができる
public class LoginRiyousha extends HttpServlet {

	private static final long serialVersionUID = 1L;

	// requestオブジェクトには、フォームで入力された文字列などが格納されている。
	// responseオブジェクトを使って、次のページを表示する
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// requestオブジェクトの文字エンコーディングの設定
		request.setCharacterEncoding("UTF-8");

		// requestオブジェクトから登録情報の取り出し
		String id = request.getParameter("id");
		String pass2 = request.getParameter("pass");

		// loginのオブジェクトに情報を格納
		Login login = new Login(id, pass2);
		RiyoushaManager manager = new RiyoushaManager();
		boolean result = manager.loginRiyousha(login);

		if (result) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/loginfin.jsp");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/loginNG.jsp");
			dispatcher.forward(request, response);
		}

	}
}
