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

//アノテーションの記述
//jspで示してあげると、jspから呼び出さられる
@WebServlet("/RegistMondai")

// HttpServletを継承することで、このクラスはServletとして、働くことができる
public class RegistMondai extends HttpServlet {

	private static final long serialVersionUID = 1L;

	// doPostメソッドから呼び出される(リダイレクトされる)
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// requestオブジェクトの文字エンコーディングの設定
		request.setCharacterEncoding("UTF-8");
		// forwardはrequestオブジェクトを引数として、次のページに渡すことができる
		RequestDispatcher dispatcher = request.getRequestDispatcher("/finish.jsp");
		dispatcher.forward(request, response);

	}

	// requestオブジェクトには、フォームで入力された文字列などが格納されている。
	// responseオブジェクトを使って、次のページを表示する
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// requestオブジェクトの文字エンコーディングの設定
		request.setCharacterEncoding("UTF-8");

		// requestオブジェクトから登録情報の取り出し
		String Id = request.getParameter("id");
		Integer Mid = Integer.valueOf(request.getParameter("mid")).intValue();
		String Title = request.getParameter("title");
		String Age = request.getParameter("age");
		String Mondai = request.getParameter("mondai");

		Id = escape(Id);
		Title = escape(Title);
		Age = escape(Age);
		Mondai = escape(Mondai);

		// コンソールに確認するために出力
		System.out.println("取得した文字列は" + Id + "です！");
		System.out.println("取得した文字列は" + Mid + "です！");
		System.out.println("取得した文字列は" + Title + "です！");
		System.out.println("取得した文字列は" + Age + "です！");
		System.out.println("取得した文字列は" + Mondai + "です！");

		// mondaiオブジェクトに情報を格納
		Mondai mondai = new Mondai(Id, Mid, Title, Age, Mondai);

		// MondaiManagerオブジェクトの生成
		MondaiManager manager = new MondaiManager();

		// 登録
		manager.registMondai(mondai);

		// 成功画面を表示する
		// System.out.println("OK牧場");
		response.sendRedirect("/Drill/RegistMondai");
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
