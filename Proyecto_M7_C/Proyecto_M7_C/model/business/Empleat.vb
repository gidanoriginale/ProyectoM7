Public Class Empleat

    Private id As Integer
    Private dni As String
    Private nom As String
    Private cognom As String
    Private categoria As Integer
    Private sou As Integer
    Private assignacio As Integer

    Public Property pId As Integer
        Get
            Return id
        End Get
        Set(ByVal value As Integer)
            id = value
        End Set
    End Property

    Public Property pDni As String
        Get
            Return dni
        End Get
        Set(ByVal value As String)
            dni = value
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

    Public Property pCognom As String
        Get
            Return cognom
        End Get
        Set(ByVal value As String)
            cognom = value
        End Set
    End Property

    Public ReadOnly Property getSou As Integer
        Get
            Return sou
        End Get
    End Property
    WriteOnly Property pSou As Integer
        Set(ByVal value As Integer)
            sou = value
        End Set
    End Property

    Public Property pCategoria As Integer
        Get
            Dim aux As String
            Select Case categoria
                Case 1
                    aux = llistaCategoria.GetValue(1)
                Case 2
                    aux = llistaCategoria.GetValue(2)
                Case 3
                    aux = llistaCategoria.GetValue(3)
                Case 4
                    aux = llistaCategoria.GetValue(4)
                Case 5
                    aux = llistaCategoria.GetValue(5)
                Case Else
                    aux = "No assignat"
            End Select
            Return aux
        End Get
        Set(ByVal value As Integer)
            categoria = value
        End Set
    End Property

    Public Property pAssignacio As Integer
        Get
            Return assignacio
        End Get
        Set(ByVal value As Integer)
            assignacio = value
        End Set
    End Property

    

  

End Class
