package com.clouway;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/**
 * Created by hisazzul@gmail.com on 7/1/14.
 */
public class CalculatorController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        ScriptEngine scriptEngine = new ScriptEngineManager().getEngineByName("JavaScript");

        String expression = req.getParameter("display");

        try {
            req.setAttribute("result", String.valueOf(scriptEngine.eval(expression)));

        } catch (ScriptException ignored) {
        }
        req.getRequestDispatcher("/calculator.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("/calculator.jsp");
    }
}