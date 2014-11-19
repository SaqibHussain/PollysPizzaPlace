
Partial Class Stats
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = (Application("userCount").ToString())
    End Sub
End Class
