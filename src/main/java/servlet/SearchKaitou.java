package servlet;

//自分が格納されているフォルダの外にある必要なクラス

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Kaitou;
import control.KaitouManager;

@WebServlet("/SearchKaitou")
// HttpServletを継承することで、このクラスはServletとして、働くことができる
public class SearchKaitou extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// requestオブジェクトの文字エンコーディングの設定
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/selectkaitoufin.jsp");
		dispatcher.forward(request, response);
	}

	// requestオブジェクトには、フォームで入力された文字列などが格納されている。
	// responseオブジェクトを使って、次のページを表示する
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// requestオブジェクトの文字エンコーディングの設定
		request.setCharacterEncoding("UTF-8");

		// requestオブジェクトから登録情報の取り出し
		String id = request.getParameter("id");
		Integer mid = Integer.valueOf(request.getParameter("mid")).intValue();

		// kaitouのオブジェクトに情報を格納
		Kaitou kaitou = new Kaitou();
		kaitou.setId(id);
		kaitou.setMid(mid);

		// KaitouManagerオブジェクトの生成
		KaitouManager manager = new KaitouManager();

		// 解答の検索
		kaitou = manager.searchKaitou(kaitou);
		// requestオブジェクトにオブジェクトを登録
		request.setAttribute("Kaitou", kaitou);
		// 情報表示画面を表示する
		RequestDispatcher dispatcher = request.getRequestDispatcher("/selectkaitoufin.jsp");
		dispatcher.forward(request, response);

	}
}
