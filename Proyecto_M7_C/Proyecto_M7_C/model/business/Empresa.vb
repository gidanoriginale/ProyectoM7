Public Class Empresa

    Private categoria As New List(Of Categoria)
    Private curs As New List(Of Curs)
    Private empleat As New List(Of Empleat)

    Public Property pCategoria As List(Of Categoria)
        Get
            Return categoria
        End Get
        Set(ByVal value As List(Of Categoria))
            categoria = value
        End Set
    End Property

    Public Property pCurs As List(Of Curs)
        Get
            Return curs
        End Get
        Set(ByVal value As List(Of Curs))
            curs = value
        End Set
    End Property

    Public Property pEmpleat As List(Of Empleat)
        Get
            Return empleat
        End Get
        Set(ByVal value As List(Of Empleat))
            empleat = value
        End Set
    End Property

    Public Function populateEmpleat(ByVal empleado As Empleat)
        empleat.Add(empleado)
    End Function
    Public Function populateCurs(ByVal curso As Curs)
        curs.Add(curso)
    End Function
    Public Function populateCategoria(ByVal cat As Categoria)
        categoria.Add(cat)
    End Function


End Class
