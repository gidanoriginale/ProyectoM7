Public Class Categoria

    Private id As Integer
    Private descripcio As String

    Public Property pId As Integer
        Get
            Return id
        End Get
        Set(ByVal value As Integer)
            id = value
        End Set
    End Property

    Public Property pDescripcio As String
        Get
            Return descripcio
        End Get
        Set(ByVal value As String)
            descripcio = value
        End Set
    End Property

End Class
