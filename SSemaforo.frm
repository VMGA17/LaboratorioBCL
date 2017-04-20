VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9180
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   12105
   LinkTopic       =   "Form1"
   ScaleHeight     =   9180
   ScaleWidth      =   12105
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer7 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   5520
      Top             =   4320
   End
   Begin VB.Timer Timer6 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   6240
      Top             =   2760
   End
   Begin VB.Timer Timer5 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   5520
      Top             =   2640
   End
   Begin VB.Timer Timer4 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   6240
      Top             =   3240
   End
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   5520
      Top             =   3120
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   6240
      Top             =   3720
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   5520
      Top             =   3720
   End
   Begin VB.CommandButton Command2 
      Caption         =   "DETENER"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6720
      TabIndex        =   2
      Top             =   4800
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "INICIAR"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3600
      TabIndex        =   1
      Top             =   4800
      Width           =   1815
   End
   Begin VB.Shape Shape2 
      BackStyle       =   1  'Opaque
      BorderColor     =   &H80000002&
      BorderWidth     =   2
      FillColor       =   &H0000FF00&
      FillStyle       =   6  'Cross
      Height          =   615
      Left            =   1080
      Shape           =   3  'Circle
      Top             =   1680
      Width           =   735
   End
   Begin VB.Line Line7 
      X1              =   10800
      X2              =   10800
      Y1              =   8160
      Y2              =   1920
   End
   Begin VB.Line Line6 
      X1              =   9360
      X2              =   10800
      Y1              =   8160
      Y2              =   8160
   End
   Begin VB.Line Line5 
      X1              =   9360
      X2              =   9360
      Y1              =   1920
      Y2              =   8160
   End
   Begin VB.Line Line4 
      X1              =   2280
      X2              =   9360
      Y1              =   1920
      Y2              =   1920
   End
   Begin VB.Line Line3 
      X1              =   2280
      X2              =   2280
      Y1              =   8160
      Y2              =   1920
   End
   Begin VB.Line Line2 
      X1              =   1080
      X2              =   2280
      Y1              =   8160
      Y2              =   8160
   End
   Begin VB.Line Line1 
      X1              =   1080
      X2              =   1080
      Y1              =   1920
      Y2              =   8160
   End
   Begin VB.Label Label1 
      Caption         =   "Movimientos"
      BeginProperty Font 
         Name            =   "Baskerville Old Face"
         Size            =   48
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   3360
      TabIndex        =   0
      Top             =   240
      Width           =   5295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Timer1.Enabled = True
End Sub

Private Sub Timer1_Timer()
Shape2.Top = Shape2.Top + 500

If Shape2.Top >= 7560 Then
Timer2.Enabled = True
Timer1.Enabled = False
End If
End Sub

Private Sub Timer2_Timer()
Shape2.Left = Shape2.Left + 500

If Shape2.Left >= 1560 Then
Timer3.Enabled = True
Timer2.Enabled = False
End If
End Sub

Private Sub Timer3_Timer()
Shape2.Top = Shape2.Top - 500

If Shape2.Top <= 1680 Then
Timer4.Enabled = True
Timer3.Enabled = False
End If
End Sub

Private Sub Timer4_Timer()
Shape2.Left = Shape2.Left + 500

If Shape2.Left >= 8640 Then
Timer5.Enabled = True
Timer4.Enabled = False
End If
End Sub

Private Sub Timer5_Timer()
Shape2.Top = Shape2.Top + 500

If Shape2.Top >= 7560 Then
Timer6.Enabled = True
Timer5.Enabled = False
End If
End Sub

Private Sub Timer6_Timer()
Shape2.Left = Shape2.Left + 500

If Shape2.Left >= 10480 Then
Timer7.Enabled = True
Timer6.Enabled = False
End If
End Sub

Private Sub Timer7_Timer()
Shape2.Top = Shape2.Top - 500

If Shape2.Top <= 1680 Then
Timer7.Enabled = False
End If
End Sub

Private Sub Timer8_Timer()

End Sub
