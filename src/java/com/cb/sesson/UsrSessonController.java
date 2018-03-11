package com.cb.sesson;

import com.cb.db.DAO;
import com.cb.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author BASAK
 */
public class UsrSessonController extends HttpServlet {

    private static final String S_UNIQUE_EMAIL = "uniqueEmail";
    private static final String S_SIGNUP = "signup";
    private static final String S_SIGNIN = "login";
    private static final String S_SIGNOUT = "logout";
    private static final String S_RECOVER_EMAIL = "recoverForgotEmail";

    private static final String USERID = "userid";
    private static final String FNAME = "fname";
    private static final String LNAME = "lname";
    private static final String ADDRS = "addrs";
    private static final String EMAIL = "email";
    private static final String CONTACT = "contct";
    private static final String PASSWD = "passwd";

    /*
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String fname, lname, addrs, email, contct, passwd, userid;

            String uri = request.getRequestURI();
            
            if (uri.contains(S_UNIQUE_EMAIL)) {
                email = request.getParameter(EMAIL);
                if (email != null && !email.equals("")) {
                    out.print((!DAO.instance().isEmailExists(email)));
                }
            }

            else if (uri.contains(S_SIGNUP)) {
                fname = request.getParameter(FNAME);
                if (fname != null && !fname.equals("")) {
                    lname = request.getParameter(LNAME);
                    if (lname != null && !lname.equals("")) {
                        addrs = request.getParameter(ADDRS);
                        if (addrs != null && !addrs.equals("")) {
                            contct = request.getParameter(CONTACT);
                            if (contct != null && !contct.equals("")) {
                                passwd = request.getParameter(PASSWD);
                                if (passwd != null && !passwd.equals("")) {
                                    email = request.getParameter(EMAIL);
                                    User user = new User(fname, lname, addrs, email, contct, passwd);
                                    out.print(DAO.instance().createNewUser(user));
                                }
                            }
                        }
                    }
                }
            } else if (uri.contains(S_SIGNIN)) {
                userid = request.getParameter(USERID);
                if (userid != null && !userid.equals("")) {
                    passwd = request.getParameter(PASSWD);
                    if (passwd != null && !passwd.equals("")) {
                        User user = new User();
                        if (isValidEmail(userid)) {
                            user.setEmail(userid);
                        } else {
                            user.setContact(userid);
                        }
                        user.setPassword(passwd);
                        user = DAO.instance().fetchLoginDetails(user);

                        if (user != null) {
                            HttpSession session = request.getSession(true);
                            session.setAttribute("account", user);

                            String remember = request.getParameter("remember");
                            if (null != remember && remember.equals("true")) {
                                CookieController.createUserCookie(request, response, user.getId());
                            } else {
                                CookieController.destroyUserCookie(request, response);
                            }

                            out.print(true);
                        } else {
                            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                            out.print(false);
                        }
                    }
                }
            } else if(uri.contains(S_RECOVER_EMAIL)) {
                email = request.getParameter("email");
                String resetPasswordHTMLTemplate = "set template here";
                if( null != email && !email.isEmpty()) {
                    if(DAO.instance().isEmailExists(email)) {
                        if(ForgetPasswordController.Mailer.send("subhankar.kgp.16@gmail.com", "whiyyxhcpgpuufas", email, "Reset Password", resetPasswordHTMLTemplate)) {
                            request.setAttribute("success", true);
                        }
                    } else 
                        request.setAttribute("success", false);
                    request.getRequestDispatcher("/Views/ForgetPassword.jsp").forward(request, response);
                }
            }
        }
    }
    public static final Pattern VALID_EMAIL_ADDRESS_REGEX
            = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);

    public static boolean isValidEmail(String emailStr) {
        Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(emailStr);
        return matcher.find();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        processLoginRequestFromAuthenticatedCookie(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processLoginRequestFromAuthenticatedCookie(HttpServletRequest request, HttpServletResponse response) throws IOException {
        if (request.getRequestURI().contains(S_SIGNIN)) {
            String uid = request.getParameter("uid");
            User user = null;
            if (null != uid && (user = DAO.instance().fetchLoginDetails(uid)) != null) {
                HttpSession session = request.getSession(true);
                session.setAttribute("account", user);
                CookieController.createUserCookie(request, response, user.getId());
                response.sendRedirect(request.getContextPath() + "/Views/Private/Dashboard.jsp");
            } else {
                response.sendRedirect(request.getContextPath() + "/Views/Login.jsp");
            }
        } else if (request.getRequestURI().contains(S_SIGNOUT)) {
            HttpSession session = request.getSession(false);
            
            if(null != session && null != session.getAttribute("account")) {
                session.removeAttribute("account");
                session.invalidate();
            }
            
            CookieController.destroyUserCookie(request, response);
            request.getSession(true);
            response.sendRedirect(request.getContextPath() + "/Views/Home.jsp");
        }
    }
}
