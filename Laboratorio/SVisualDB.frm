VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7860
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   8280
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   12
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   7860
   ScaleWidth      =   8280
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "Guardar Registro"
      Height          =   495
      Left            =   5520
      TabIndex        =   15
      Top             =   6240
      Width           =   2295
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Eliminar Registro"
      Height          =   495
      Left            =   3000
      TabIndex        =   14
      Top             =   6240
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Agregar Registro"
      Height          =   495
      Left            =   360
      TabIndex        =   13
      Top             =   6240
      Width           =   2415
   End
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "C:\Users\estudiante\Desktop\Laboratorio\Estudiantes.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   405
      Left            =   1200
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Estudiantes"
      Top             =   5400
      Width           =   3615
   End
   Begin VB.TextBox Text6 
      DataField       =   "Semestre"
      DataSource      =   "Data1"
      Height          =   615
      Left            =   3000
      TabIndex        =   12
      Top             =   4560
      Width           =   2295
   End
   Begin VB.TextBox Text5 
      DataField       =   "Facultad"
      DataSource      =   "Data1"
      Height          =   615
      Left            =   3000
      TabIndex        =   11
      Top             =   3840
      Width           =   2295
   End
   Begin VB.TextBox Text4 
      DataField       =   "Edad"
      DataSource      =   "Data1"
      Height          =   495
      Left            =   3000
      TabIndex        =   10
      Top             =   3240
      Width           =   2295
   End
   Begin VB.TextBox Text3 
      DataField       =   "Apellidos"
      DataSource      =   "Data1"
      Height          =   615
      Left            =   3000
      TabIndex        =   9
      Top             =   2520
      Width           =   2295
   End
   Begin VB.TextBox Text2 
      DataField       =   "Nombres"
      DataSource      =   "Data1"
      Height          =   615
      Left            =   3000
      TabIndex        =   8
      Top             =   1560
      Width           =   2295
   End
   Begin VB.TextBox Text1 
      DataField       =   "Carné"
      DataSource      =   "Data1"
      Height          =   495
      Left            =   3000
      TabIndex        =   7
      Top             =   840
      Width           =   2295
   End
   Begin VB.Label Label7 
      Caption         =   "Semestre:"
      Height          =   375
      Left            =   360
      TabIndex        =   6
      Top             =   4560
      Width           =   1935
   End
   Begin VB.Label Label6 
      Caption         =   "Facultad:"
      Height          =   495
      Left            =   360
      TabIndex        =   5
      Top             =   3840
      Width           =   2175
   End
   Begin VB.Label Label5 
      Caption         =   "Edad:"
      Height          =   375
      Left            =   360
      TabIndex        =   4
      Top             =   3240
      Width           =   1935
   End
   Begin VB.Label Label4 
      Caption         =   "Apellidos:"
      Height          =   495
      Left            =   360
      TabIndex        =   3
      Top             =   2520
      Width           =   1815
   End
   Begin VB.Label Label3 
      Caption         =   "Nombres:"
      Height          =   615
      Left            =   360
      TabIndex        =   2
      Top             =   1680
      Width           =   1695
   End
   Begin VB.Label Label2 
      Caption         =   "Carné:"
      Height          =   495
      Left            =   360
      TabIndex        =   1
      Top             =   960
      Width           =   1575
   End
   Begin VB.Label Label1 
      Caption         =   "Estudiantes:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1920
      TabIndex        =   0
      Top             =   120
      Width           =   3015
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Data1.Recordset.AddNew
End Sub

Private Sub Command2_Click()
Data1.Recordset.Delete
End Sub

Private Sub Command3_Click()
Data1.Recordset.Upload
End Sub
