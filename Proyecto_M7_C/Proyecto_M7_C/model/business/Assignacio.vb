Public Class Assignacio

    Private id As Integer
    Private as1 As Integer
    Private as2 As Integer
    Private as3 As Integer
    Private horesTotals As Integer

    Public Property pId As Integer
        Get
            Return id
        End Get
        Set(ByVal value As Integer)
            id = value
        End Set
    End Property

    Public Property pAs1 As Integer
        Get
            Return as1
        End Get
        Set(ByVal value As Integer)
            as1 = value
        End Set
    End Property
    Public Property pAs2 As Integer
        Get
            Return as2
        End Get
        Set(ByVal value As Integer)
            as2 = value
        End Set
    End Property
    Public Property pAs3 As Integer
        Get
            Return as3
        End Get
        Set(ByVal value As Integer)
            as3 = value
        End Set
    End Property

    Public Property pHoresTotals As Integer
        Get
            Return horesTotals
        End Get
        Set(ByVal value As Integer)
            horesTotals = value
        End Set
    End Property




End Class
