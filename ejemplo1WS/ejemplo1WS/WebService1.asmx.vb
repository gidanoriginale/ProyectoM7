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

    <WebMethod()> _
    Public Function hores() As String
        Return Date.Now().ToString
    End Function

    <WebMethod()> _
    Public Function calculDespeses(ByVal horesTotals As Integer, ByVal categoria As Integer) As String

        Dim despeses As Integer

        Select Case categoria
            Case 1
                'informatics
                despeses = horesTotals * 40
            Case 2
                'administratius
                despeses = horesTotals * 25
            Case 3
                'transportistes
                despeses = horesTotals * 20
            Case 4
                'comptable
                despeses = horesTotals * 30
            Case 5
                'gerent
                despeses = horesTotals * 60
            Case Else
                despeses = 0
        End Select

        Return despeses

    End Function


    
End Class