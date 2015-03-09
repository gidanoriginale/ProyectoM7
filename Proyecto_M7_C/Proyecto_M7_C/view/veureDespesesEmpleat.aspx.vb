Imports System.Data.SqlClient

Public Class veureDespesesEmpleat
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim conectionString As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True;User Instance=True"
        Dim conexio As New SqlConnection(conectionString)
        Dim comanda As New SqlCommand("Select * from Empleat", conexio)

        Dim dataSet As New DataSet
        Dim dataAdapter As New SqlDataAdapter(comanda)
        Dim cursor As SqlDataReader

        Try
            conexio.Open()
            cursor = comanda.ExecuteReader()

            Dim i As Byte = 0
            'Omplim l'array amb les dades de la taulta
            Do While cursor.Read
                'Todo: Cargar del array de empleados

                Dim servicio As New servei.WebService1
                Dim despeses As Integer

                despeses = servicio.calculDespeses(300, cursor("idCategoria"))

                Label1.Text = Label1.Text + "Empleado " + cursor("id").ToString + " Nombre : " + cursor("nom") + " Despeses : " + despeses.ToString + "€" + vbCrLf

                i += 1
            Loop

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If conexio.State <> ConnectionState.Closed Then
                conexio.Close()
            End If
        End Try

    End Sub


End Class