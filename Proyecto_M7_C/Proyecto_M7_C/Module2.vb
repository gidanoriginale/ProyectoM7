Imports System.Data.SqlClient

Module Module2
    Public empleados(10) As Empleat

    Sub carregarArray()
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
                Dim nou As New Empleat
                nou.pId = cursor("id")
                nou.pCategoria = cursor("idCategoria")
                nou.pAssignacio = cursor("idAssignacio")
                nou.pNom = cursor("nom")
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
End Module
