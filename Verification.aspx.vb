Imports System.Data.SqlClient
Partial Class Verification
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\owner\Documents\RegistrationTD.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        con.Open()
        Dim cmd As New SqlCommand("SELECT * FROM RegisterTD WHERE PhoneNo ='" & txtphone.Text & "'", con)
        Dim rd As SqlDataReader = cmd.ExecuteReader
        Dim pass As String
        If rd.HasRows Then
            rd.Read()
            pass = rd("passname")
            txtdept.Text = rd("FirstName")
            txtgender.Text = rd("Gender")
            txtdob.Text = rd("LastName")
            txtmatric.Text = rd("MatricNo")
            Image4.ImageUrl = "~/passport/" & pass
            Panel1.Visible = True
        Else
            Label3.Text = ("NO DATA FOUND")
        End If
        rd.Close()
        con.Close()
        Dim s As String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        Dim r As New Random
        Dim sb As New StringBuilder
        For i As Integer = 1 To 8
            Dim idx As Integer = r.Next(0, 35)
            sb.Append(s.Substring(idx, 1))
        Next
        txtverification.Text = (sb.ToString())
    End Sub

    Protected Sub button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles button2.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\owner\Documents\RegistrationTD.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        con.Open()
        Dim cmd As New SqlCommand("INSERT INTO VerificationTD VALUES('" & txtfname.Text & "','" & txtlname.Text & "','" & txtphone.Text & "','" & txtverification.Text & "')", con)
        cmd.ExecuteNonQuery()
        Label2.Text = ("VERIFIED SUCCESSFULLY")
        con.Close()
    End Sub
End Class
