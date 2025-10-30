<%
class db {

    public static Connection createConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://" + Config.getDatabaseHost() + "/" + Config.getDatabaseName();
        Connection con = DriverManager.getConnection( url, Config.getDatabaseUser(), Config.getDatabasePass() );
        return con;

    }

}
%>