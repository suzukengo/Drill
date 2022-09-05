package servlet;

//自分が格納されているフォルダの外にある必要なクラス

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Mondai;
import control.MondaiManager;

@WebServlet("/SearchMondai")
// HttpServletを継承することで、このクラスはServletとして、働くことができる
public class SearchMondai extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// requestオブジェクトの文字エンコーディングの設定
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/selectmondai.jsp");
		dispatcher.forward(request, response);
	}

	// requestオブジェクトには、フォームで入力された文字列などが格納されている。
	// responseオブジェクトを使って、次のページを表示する
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// requestオブジェクトの文字エンコーディングの設定
		request.setCharacterEncoding("UTF-8");

		// requestオブジェクトから登録情報の取り出し
		Integer mid = Integer.valueOf(request.getParameter("mid")).intValue();

		// Mondaiのオブジェクトに情報を格納
		Mondai mondai = new Mondai();
		mondai.setMid(mid);

		// MondaiManagerオブジェクトの生成
		MondaiManager manager = new MondaiManager();

		// 問題の検索
		mondai = manager.searchMondai(mondai);
		// requestオブジェクトにオブジェクトを登録
		request.setAttribute("Mondai", mondai);
		// 情報表示画面を表示する
		RequestDispatcher dispatcher = request.getRequestDispatcher("/selectmondai.jsp");
		dispatcher.forward(request, response);

	}
}
