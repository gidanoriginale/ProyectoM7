Public Class Curs

    Private codi As Integer
    Private nom As String
    Private categoria As Integer
    Private hora As Integer

    Public Property pCodi As Integer
        Get
            Return codi
        End Get
        Set(ByVal value As Integer)
            codi = value
        End Set
    End Property

    Public Property pNom As String
        Get
            Return nom
        End Get
        Set(ByVal value As String)
            nom = value
        End Set
    End Property

    Public Property pCategoria As Integer
        Get
            Return categoria
        End Get
        Set(ByVal value As Integer)
            categoria = value
        End Set
    End Property

    Public Property pHora As Integer
        Get
            Return hora
        End Get
        Set(ByVal value As Integer)
            hora = value
        End Set
    End Property
End Class
