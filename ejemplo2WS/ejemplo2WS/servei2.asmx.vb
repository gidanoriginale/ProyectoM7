Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.ComponentModel
Imports System.Data.SqlClient

' Para permitir que se llame a este servicio Web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente.
' <System.Web.Script.Services.ScriptService()> _
<System.Web.Services.WebService(Namespace:="http://tempuri.org/")> _
<System.Web.Services.WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<ToolboxItem(False)> _
Public Class WebService1
    Inherits System.Web.Services.WebService

    'Funció que mostra cursos que poden interessar que no estiguin relacionats amb el treball, 
    'fora de l'horari laboral
    <WebMethod()> _
    Public Function veureCursos(ByVal curs As Integer) As String

        Dim despeses As Integer

        Select Case curs
            Case 1
                'curs de musica
                despeses = horesTotals * 40
            Case 2
                'curs de hosteleria
                despeses = horesTotals * 25
            Case 3
                '
                despeses = horesTotals * 20
            Case Else
                despeses = 0
        End Select

        Return despeses

    End Function



End Class