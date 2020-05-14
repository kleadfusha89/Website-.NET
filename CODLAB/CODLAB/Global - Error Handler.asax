<%@ Application Language="C#" %>


<script runat="server">

    void Application_AcquireRequestState(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.Private);
    }

    void Application_PostRequestHandlerExecute(object sender, EventArgs e)
    {

        if (Response.ContentType.IndexOf("text/html") != -1)
            Response.ContentType = "application/xhtml+xml; charset=utf-8";
    }

    // THIS IS TO PREVENT THE YELLOW SCREEN OF DEATH IN ALL PAGES.
    void Application_Error(object sender, EventArgs e)
    {
        Exception ex = Server.GetLastError();
        string msg = "Application Error\r\n";

        msg += "IP: " + Request.ServerVariables["REMOTE_ADDR"] + "\r\n";
        msg += "Page: " + Request.ServerVariables["PATH_INFO"] + "\r\n";
        msg += "Error: " + ex.ToString();

        WriteToLog(msg);

        Response.Write("<!DOCTYPE html><html xmlns=\"http://www.w3.org/1999/xhtml\"><head></head>"
            + " <body> There was an error on our site. Our admin has been notified.</body></html>");
        Response.Flush();
        Response.End();
    }


    void SessionStart(object sender, EventArgs e)
    {
        string msg = "Session Start\r\n";
        msg += "IP: " + Request.ServerVariables["REMOTE_ADDR"] + "\r\n";
        msg += "Page: " + Request.ServerVariables["PATH_INFO"] + "\r\n";

        WriteToLog(msg);

        
    }

    // THIS WILL WRITE DOWN THE CONTENT OF THE YELLOW SCREEN OF DEATH IN A FILE
    void WriteToLog(string s)
    {
        string LogName = Server.MapPath("~/") + "EventLog" + DateTime.Now.ToString("yyyyMMdd");

        System.IO.StreamWriter w = System.IO.File.AppendText(LogName);

        w.Write("\r\n\r\n\r\n----------------------------------------------------------------------------------\r\n");
        w.Write("Date: " + DateTime.Now.ToString("MM dd yyyy HH:mm:ss") + "\r\n");
        w.Write(s);
        w.Close();

    }


</script> 