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

@WebServlet("/SearchInfok")
// HttpServletを継承することで、このクラスはServletとして、働くことができる
public class SearchRiyousha extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// requestオブジェクトの文字エンコーディングの設定
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/searchfinish.jsp");
		dispatcher.forward(request, response);
	}

	// requestオブジェクトには、フォームで入力された文字列などが格納されている。
	// responseオブジェクトを使って、次のページを表示する
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// requestオブジェクトの文字エンコーディングの設定
		request.setCharacterEncoding("UTF-8");

		// requestオブジェクトから登録情報の取り出し
		String id = request.getParameter("id");
		id = escape(id);

		// riyoushaのオブジェクトに情報を格納
		Riyousha riyousha = new Riyousha();
		riyousha.setId(id);

		// RiyoushaManagerオブジェクトの生成
		RiyoushaManager manager = new RiyoushaManager();

		// 利用者の検索
		riyousha = manager.searchRiyousha(riyousha);
		// requestオブジェクトにオブジェクトを登録
		request.setAttribute("Riyousha", riyousha);
		// 情報表示画面を表示する
		RequestDispatcher dispatcher = request.getRequestDispatcher("/searchfinish.jsp");
		dispatcher.forward(request, response);

	}

	private static String escape(String val) {
		if (val == null) return "";
		val = val.replaceAll("&", "& amp;");
		val = val.replaceAll("<", "& lt;");
		val = val.replaceAll(">", "& gt;");
		val = val.replaceAll("\"", "&quot;");
		val = val.replaceAll("'", "&apos;");
		return val;
	  }
}
