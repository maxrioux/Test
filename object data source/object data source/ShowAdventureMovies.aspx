<%@ Page Language="C#" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<script runat="server">

    protected void srcMovies_ObjectCreating(object sender, ObjectDataSourceEventArgs e)
    {
        MoviesByCategory movies = new MoviesByCategory("Adventure");
        e.ObjectInstance = movies;
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Adventure Movies</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <h1>Adventure Movies</h1>
    
    <asp:GridView
        id="grdMovies"
        DataSourceID="srcMovies"
        Runat="server" />
        
    <asp:ObjectDataSource
        id="srcMovies"
        TypeName="MoviesByCategory"
        SelectMethod="GetMovies"
        OnObjectCreating="srcMovies_ObjectCreating" 
        Runat="server" />    
    
    </div>
    </form>
</body>
</html>
