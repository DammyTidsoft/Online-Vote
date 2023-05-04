Imports System.Data.SqlClient
Partial Class register_vote
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim passname As String
        If FileUpload2.HasFile Then
            passname = FileUpload2.FileName
            FileUpload2.SaveAs(Server.MapPath("~/passport/" & passname))
        End If
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\owner\Documents\RegistrationTD.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        con.Open()
        Dim cmd As New SqlCommand("INSERT INTO RegisterTD VALUES('" & txtfname.Text & "','" & txtlname.Text & "','" & txtdept.Text & "','" & txtgender.Text & "','" & txtdob.Text & "','" & txtage.Text & "','" & txtorigin.Text & "','" & txtaddress.Text & "','" & txtmatric.Text & "','" & txtlevel.Text & "','" & txthod.Text & "','" & txtschool.Text & "','" & txtphone.Text & "','" & passname & "')", con)
        cmd.ExecuteNonQuery()
        Label1.Text = ("REGISTERED SUCCESSFULLY")
        con.Close()
        Response.Redirect("Verification.aspx")
    End Sub
End Class
