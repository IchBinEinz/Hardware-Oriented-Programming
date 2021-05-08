Public Class Form1
    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Me.Close()
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        SerialPort1.Open()
        CheckBox1.Checked = True
        CheckBox1.Text = "Terhubung"
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        SerialPort1.Close()
        CheckBox1.Checked = False
        CheckBox1.Text = "Tidak Terhubung"
    End Sub

    Private Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged

    End Sub

    Private Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox1.CheckedChanged

    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim Data As String
        Data = TextBox1.Text & Chr(13)
        Timer1.Start()
        SerialPort1.WriteLine(Data)
    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        TextBox2.Text = TextBox2.Text + 1
        If TextBox2.Text = "10" Then
            TextBox2.Text = "0"
        End If
    End Sub

    Private Sub Timer1_Disposed(sender As Object, e As EventArgs) Handles Timer1.Disposed

    End Sub

    Private Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles TextBox2.TextChanged

    End Sub

    Private Sub SerialPort1_DataReceived(sender As Object, e As IO.Ports.SerialDataReceivedEventArgs) Handles SerialPort1.DataReceived
        Dim pass As String
        pass = SerialPort1.ReadExisting()
        If pass = "s" Then
            Timer1.Stop()
        Else
            Timer1.Start()
        End If


    End Sub

    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        TextBox2.Text = "0"
    End Sub

    Private Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Timer1.Stop()
    End Sub
End Class
