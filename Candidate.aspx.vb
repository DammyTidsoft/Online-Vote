Imports System.Data.SqlClient
Partial Class Candidate
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim passname As String
        If FileUpload1.HasFile Then
            passname = FileUpload1.FileName
            FileUpload1.SaveAs(Server.MapPath("~/passport/" & passname))
        End If
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\owner\Documents\RegistrationTD.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        con.Open()
        Dim cmd As New SqlCommand("INSERT INTO CandidateTD VALUES('" & txtfname.Text & "','" & txtlname.Text & "','" & txtother.Text & "','" & txtaddress.Text & "','" & txtphone.Text & "','" & txtemail.Text & "','" & txtnationality.Text & "','" & txtdob.Text & "','" & txtpost.Text & "','" & passname & "')", con)
        cmd.ExecuteNonQuery()
        Label1.Text = ("REGISTERED SUCCESSFULLY")
        con.Close()
    End Sub
End Class
