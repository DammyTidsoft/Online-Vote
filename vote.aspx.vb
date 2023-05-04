Imports System.Data.SqlClient
Partial Class vote
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\owner\Documents\RegistrationTD.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        con.Open()
        Dim cmd As New SqlCommand("SELECT * FROM VerificationTD WHERE VerificationCode ='" & txtverification.Text & "'", con)
        Dim rd As SqlDataReader = cmd.ExecuteReader

        If rd.HasRows Then
            rd.Read()
            txtfname.Text = rd("FirstName")
            txtlname.Text = rd("Lastname")
            txtphone.Text = rd("PhoneNo")
            Panel1.Visible = True
        Else
            Label2.Text = ("No data Found")
        End If
        rd.Close()
        con.Close()

    End Sub
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\owner\Desktop\Online Vote\App_Data\RegistrationTD.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        con.Open()
        Dim cmd As New SqlCommand("INSERT INTO VoteTD VALUES('" & txtfname.Text & "','" & txtlname.Text & "','" & txtverification.Text & "','" & txtphone.Text & "','" & txtcandidate.Text & "')", con)
        cmd.ExecuteNonQuery()
        Label3.Text = ("YOU VOTE SUCCESSFULLY")
        con.Close()
    End Sub
End Class
