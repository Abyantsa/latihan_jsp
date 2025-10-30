<%

class user {

    public static boolean login ( String username, String password ) throws Exception {

        boolean result = false;

        Connection con = db.createConnection();

        String sql = "SELECT count('*') AS jml FROM user WHERE username=? AND password=md5(?)";

        PreparedStatement ps = con.prepareStatement( sql );
        ps.setString( 1, username );
        ps.setString( 2, password );

        ResultSet rs = ps.executeQuery();
        
        if ( rs.next() ) {
            if ( rs.getInt(1) == 1 ) result = true;
        }

        ps.close();
        con.close();

        return result;
    }

}

%>