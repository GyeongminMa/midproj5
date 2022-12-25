package co.five.mprj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.five.mprj.common.Command;

public class Mypage implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		return "order/주문내역 만든 곳.tiles";
	}

}
