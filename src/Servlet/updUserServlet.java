package Servlet;

import Entity.User;
import Service.UserService;
import Service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

@WebServlet(name = "updUserServlet", urlPatterns = "/updUserServlet")
@MultipartConfig(maxFileSize = 1204*1024*2)
public class updUserServlet extends HttpServlet implements Serializable {
    private String ALLOW_IMG_TYPE = "image/gif;image/png;image/jpeg;image/jpg";
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        PrintWriter out =response.getWriter();
        String opr = request.getParameter("opr");
        HttpSession session=request.getSession();
        UserService userService =new UserServiceImpl();
        if (opr.equals("updUserServlet")){
            String uploadFilePath=request.getSession().getServletContext().getRealPath("upload/");
            String message="";
            try{
                File fileSaveDir=new File(uploadFilePath);
                if (!fileSaveDir.exists()){
                    fileSaveDir.mkdir();
                }
                Part part = request.getPart("fileField");
                String contentType = part.getContentType();
                List<String> allowTypes = Arrays.asList(ALLOW_IMG_TYPE.split(";"));
                if (!(contentType==null || "".equals(contentType.trim())) && allowTypes.contains(contentType)){
                    String fileName = extractFileName(part);
                    String suffix=getSuffix(fileName);
                    String newFileName= UUID.randomUUID().toString().replace("-","")+suffix;
                    String location=uploadFilePath+File.separator+newFileName;
                    part.write(location);
                    User user=((User) session.getAttribute("user"));
                    user.setImage("upload/"+newFileName);
                    int result=userService.updUserImg(user);
                    if (result>0){
                        session.setAttribute("user",user);
                        response.sendRedirect(request.getHeader("Referer"));
                    }else {
                        out.println("<script type='text/javascript'>");
                        out.println("alert('头像更新失败！请重试！');");
                        out.println("window.history.back(-1);");
                        out.println("</script>");
                    }
                }else {
                    out.println("<script type='text/javascript'>");
                    out.println("alert('上传失败，文件类型只能是PNG格式、JPG格式、JEPG格式和GIF格式！');");
                    out.println("window.history.back(-1);");
                    out.println("</script>");
                }
            }catch (IllegalStateException e){
                out.println("<script type='text/javascript'>");
                out.println("alert('上传文件失败！上传文件大小必须在2MB以内！');");
                out.println("window.history.back(-1);");
                out.println("</script>");
            }catch (Exception e){
                e.printStackTrace();
            }
            out.flush();
            out.close();
        }
    }
    private String getSuffix(String filename){
        return filename.substring(filename.lastIndexOf("."));
    }
    private String extractFileName(Part part){
        String contentDisp = part.getHeader("content-disposition");
        String [] items=contentDisp.split(";");
        for (String s: items){
            if (s.trim().startsWith("filename")){
                return s.substring(s.indexOf("=")+2,s.length()-1);
            }
        }
        return "";
    }
}
