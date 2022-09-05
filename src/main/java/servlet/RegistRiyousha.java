package servlet;

//自分が格納されているフォルダの外にある必要なクラス
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Riyousha;
import control.RiyoushaManager;

//アノテーションの記述
@WebServlet("/RegistInfok")

// HttpServletを継承することで、このクラスはServletとして、働くことができる
public class RegistRiyousha extends HttpServlet {

	private static final long serialVersionUID = 1L;

	// doPostメソッドから呼び出される(リダイレクトされる)
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// requestオブジェクトの文字エンコーディングの設定
		request.setCharacterEncoding("UTF-8");
		// forwardはrequestオブジェクトを引数として、次のページに渡すことができる
		RequestDispatcher dispatcher = request.getRequestDispatcher("/registerfinish.jsp");
		dispatcher.forward(request, response);
	}

	// requestオブジェクトには、フォームで入力された文字列などが格納されている。
	// responseオブジェクトを使って、次のページを表示する
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// requestオブジェクトの文字エンコーディングの設定
		request.setCharacterEncoding("UTF-8");

		// requestオブジェクトから登録情報の取り出し
		String Id = request.getParameter("id");
		String Pass = request.getParameter("pass");
		String Name = request.getParameter("name");

		// コンソールに確認するために出力
		System.out.println("取得した文字列は" + Id + "です！");
		System.out.println("取得した文字列は" + Pass + "です！");
		System.out.println("取得した文字列は" + Name + "です！");

		// riyoushaオブジェクトに情報を格納
		Riyousha riyousha = new Riyousha(Id, Pass, Name);

		// RiyoushaManagerオブジェクトの生成
		RiyoushaManager manager = new RiyoushaManager();

		// 登録
		manager.registRiyousha(riyousha);

		// 成功画面を表示する

		response.sendRedirect("/Drill/RegistInfok");
	}
}
