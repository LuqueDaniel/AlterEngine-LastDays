VERSION 5.00
Begin VB.Form frmGuild 
   BackColor       =   &H00808080&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Crear un clan"
   ClientHeight    =   5715
   ClientLeft      =   75
   ClientTop       =   315
   ClientWidth     =   8085
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmGuild.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmGuild.frx":0FC2
   ScaleHeight     =   381
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   539
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtName 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Left            =   2640
      TabIndex        =   1
      Top             =   2640
      Width           =   2775
   End
   Begin VB.TextBox txtGuild 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Left            =   2640
      TabIndex        =   0
      Top             =   3240
      Width           =   2775
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Nombre para el clan:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   270
      Left            =   2520
      TabIndex        =   5
      Top             =   3000
      Width           =   3015
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      ForeColor       =   &H80000008&
      Height          =   630
      Left            =   4320
      TabIndex        =   4
      Top             =   4440
      Width           =   2295
   End
   Begin VB.Label Command1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      ForeColor       =   &H80000008&
      Height          =   615
      Left            =   1440
      TabIndex        =   3
      Top             =   4440
      Width           =   2295
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Nombre del due�o del clan:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   270
      Left            =   2520
      TabIndex        =   2
      Top             =   2400
      Width           =   3015
   End
End
Attribute VB_Name = "frmGuild"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
    Dim packet As String
    packet = "GUILDMAKE" & SEP_CHAR & txtName.Text & SEP_CHAR & txtGuild.Text & END_CHAR
    Call SendData(packet)
End Sub

Private Sub Form_Load()
    Dim i As Long
    Dim Ending As String
    For i = 1 To 3
        If i = 1 Then
            Ending = ".gif"
        End If
        If i = 2 Then
            Ending = ".jpg"
        End If
        If i = 3 Then
            Ending = ".png"
        End If

        If FileExists("GUI\Crear_Clan" & Ending) Then
            frmGuild.Picture = LoadPicture(App.Path & "\GUI\Crear_Clan" & Ending)
        End If
    Next i
End Sub

Private Sub Label1_Click()
    Unload frmGuild
End Sub

