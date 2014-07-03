package com.clouway;

import org.jmock.Expectations;
import org.jmock.Mockery;
import org.jmock.integration.junit4.JUnit4Mockery;
import org.junit.Before;
import org.junit.Test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by hisazzul@gmail.com on 7/3/14.
 */
public class CalculatorControllerTest {

    CalculatorController calculatorController;
    Mockery context = new JUnit4Mockery();

    HttpServletRequest request = context.mock(HttpServletRequest.class);
    HttpServletResponse response = context.mock(HttpServletResponse.class);

    @Before
    public void setUp() throws Exception {

        calculatorController = new CalculatorController();
    }

    @Test
    public void dispatchResultSuccessful() throws Exception {

        context.checking(new Expectations(){
            {
                oneOf(request).getParameter("display");
                will(returnValue("5+5"));
                oneOf(request).setAttribute("result","10.0");
                oneOf(request).getRequestDispatcher("/calculator.jsp");
            }
        });
        calculatorController.doPost(request,response);
    }
}