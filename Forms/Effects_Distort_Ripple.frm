VERSION 5.00
Begin VB.Form FormRipple 
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000005&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   " Ripple"
   ClientHeight    =   6705
   ClientLeft      =   -15
   ClientTop       =   225
   ClientWidth     =   12135
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   447
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   809
   ShowInTaskbar   =   0   'False
   Begin PhotoDemon.commandBar cmdBar 
      Align           =   2  'Align Bottom
      Height          =   750
      Left            =   0
      TabIndex        =   0
      Top             =   5955
      Width           =   12135
      _ExtentX        =   21405
      _ExtentY        =   1323
      BackColor       =   14802140
   End
   Begin PhotoDemon.fxPreviewCtl fxPreview 
      Height          =   5625
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   5625
      _ExtentX        =   9922
      _ExtentY        =   9922
      DisableZoomPan  =   -1  'True
      PointSelection  =   -1  'True
   End
   Begin PhotoDemon.buttonStrip btsOptions 
      Height          =   600
      Left            =   6240
      TabIndex        =   2
      Top             =   5160
      Width           =   5595
      _ExtentX        =   9869
      _ExtentY        =   1058
   End
   Begin VB.PictureBox picContainer 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   4335
      Index           =   1
      Left            =   5880
      ScaleHeight     =   289
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   409
      TabIndex        =   5
      Top             =   120
      Visible         =   0   'False
      Width           =   6135
      Begin VB.ComboBox cmbEdges 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   360
         Left            =   240
         Style           =   2  'Dropdown List
         TabIndex        =   13
         Top             =   3840
         Width           =   5700
      End
      Begin PhotoDemon.sliderTextCombo sltRadius 
         Height          =   720
         Left            =   120
         TabIndex        =   14
         Top             =   1440
         Width           =   5895
         _ExtentX        =   10398
         _ExtentY        =   1270
         Caption         =   "radius (percentage)"
         Min             =   1
         Max             =   100
         Value           =   100
         NotchPosition   =   2
         NotchValueCustom=   100
      End
      Begin PhotoDemon.sliderTextCombo sltPhase 
         Height          =   720
         Left            =   120
         TabIndex        =   15
         Top             =   2400
         Width           =   5895
         _ExtentX        =   10398
         _ExtentY        =   1270
         Caption         =   "time (phase)"
         Max             =   360
      End
      Begin VB.Label lblTitle 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "if pixels lie outside the image..."
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   285
         Index           =   5
         Left            =   120
         TabIndex        =   16
         Top             =   3360
         Width           =   3315
      End
   End
   Begin VB.PictureBox picContainer 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   4335
      Index           =   0
      Left            =   5880
      ScaleHeight     =   289
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   409
      TabIndex        =   4
      Top             =   120
      Width           =   6135
      Begin PhotoDemon.sliderTextCombo sltAmplitude 
         Height          =   720
         Left            =   120
         TabIndex        =   6
         Top             =   2520
         Width           =   5895
         _ExtentX        =   10398
         _ExtentY        =   1270
         Caption         =   "height of ripples (amplitude)"
         Max             =   100
         Value           =   80
      End
      Begin PhotoDemon.sliderTextCombo sltWavelength 
         Height          =   720
         Left            =   120
         TabIndex        =   7
         Top             =   1560
         Width           =   5895
         _ExtentX        =   10398
         _ExtentY        =   1270
         Caption         =   "length of ripples (wavelength)"
         Min             =   1
         Max             =   200
         Value           =   16
      End
      Begin PhotoDemon.sliderTextCombo sltQuality 
         Height          =   720
         Left            =   120
         TabIndex        =   8
         Top             =   3480
         Width           =   5895
         _ExtentX        =   10398
         _ExtentY        =   1270
         Caption         =   "quality"
         Min             =   1
         Max             =   5
         Value           =   2
         NotchPosition   =   2
         NotchValueCustom=   2
      End
      Begin PhotoDemon.sliderTextCombo sltXCenter 
         Height          =   405
         Left            =   120
         TabIndex        =   9
         Top             =   480
         Width           =   2895
         _ExtentX        =   5106
         _ExtentY        =   873
         Max             =   1
         SigDigits       =   2
         Value           =   0.5
         NotchPosition   =   2
         NotchValueCustom=   0.5
      End
      Begin PhotoDemon.sliderTextCombo sltYCenter 
         Height          =   405
         Left            =   3120
         TabIndex        =   10
         Top             =   480
         Width           =   2895
         _ExtentX        =   5106
         _ExtentY        =   873
         Max             =   1
         SigDigits       =   2
         Value           =   0.5
         NotchPosition   =   2
         NotchValueCustom=   0.5
      End
      Begin VB.Label lblTitle 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "center position (x, y)"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   285
         Index           =   6
         Left            =   120
         TabIndex        =   12
         Top             =   120
         Width           =   2205
      End
      Begin VB.Label lblExplanation 
         BackStyle       =   0  'Transparent
         Caption         =   "Note: you can also set a center position by clicking the preview window."
         ForeColor       =   &H00404040&
         Height          =   435
         Index           =   0
         Left            =   240
         TabIndex        =   11
         Top             =   1050
         Width           =   5655
         WordWrap        =   -1  'True
      End
   End
   Begin VB.Label lblTitle 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "options"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   285
      Index           =   7
      Left            =   6000
      TabIndex        =   3
      Top             =   4800
      Width           =   780
   End
End
Attribute VB_Name = "FormRipple"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'***************************************************************************
'Image "Ripple" Distortion
'Copyright 2000-2015 by Tanner Helland
'Created: 06/January/13
'Last updated: 10/January/14
'Last update: added user-editable center point for the ripple
'
'This tool allows the user to apply a "water ripple" distortion to an image.  Bilinear interpolation
' (via reverse-mapping) is available for a high-quality result.
'
'Three parameters are required - wavelength, amplitude, and phase.  Phase can be varied over time to create an
' animated ripple effect.  My implementation also requires a radius, which is a value [1,100] specifying the amount
' of the image to cover with the effect.  Max radius is the distance from the center of the image to a corner.
'
'As of January '14, the user can now set any location on the image as the center point.
'
'Finally, the transformation used by this tool is a modified version of a transformation originally written by
' Jerry Huxtable of JH Labs.  Jerry's original code is licensed under an Apache 2.0 license.  You may download his
' original version at the following link (good as of 07 January '13): http://www.jhlabs.com/ip/filters/index.html
'
'All source code in this file is licensed under a modified BSD license.  This means you may use the code in your own
' projects IF you provide attribution.  For more information, please visit http://photodemon.org/about/license/
'
'***************************************************************************

Option Explicit

Private Sub btsOptions_Click(ByVal buttonIndex As Long)
    picContainer(buttonIndex).Visible = True
    picContainer(1 - buttonIndex).Visible = False
End Sub

Private Sub cmbEdges_Click()
    updatePreview
End Sub

'Apply a "water ripple" effect to an image
Public Sub RippleImage(ByVal rippleWavelength As Double, ByVal rippleAmplitude As Double, ByVal ripplePhase As Double, ByVal rippleRadius As Double, ByVal edgeHandling As Long, ByVal superSamplingAmount As Long, Optional ByVal centerX As Double = 0.5, Optional ByVal centerY As Double = 0.5, Optional ByVal toPreview As Boolean = False, Optional ByRef dstPic As fxPreviewCtl)

    If Not toPreview Then Message "Simulating ripples across image surface..."
    
    'Create a local array and point it at the pixel data of the current image
    Dim dstImageData() As Byte
    Dim dstSA As SAFEARRAY2D
    prepImageData dstSA, toPreview, dstPic
    CopyMemory ByVal VarPtrArray(dstImageData()), VarPtr(dstSA), 4
    
    'Create a second local array.  This will contain the a copy of the current image, and we will use it as our source reference
    ' (This is necessary to prevent diffused pixels from spreading across the image as we go.)
    Dim srcImageData() As Byte
    Dim srcSA As SAFEARRAY2D
    
    Dim srcDIB As pdDIB
    Set srcDIB = New pdDIB
    srcDIB.createFromExistingDIB workingDIB
    
    prepSafeArray srcSA, srcDIB
    CopyMemory ByVal VarPtrArray(srcImageData()), VarPtr(srcSA), 4
        
    'Local loop variables can be more efficiently cached by VB's compiler, so we transfer all relevant loop data here
    Dim x As Long, y As Long, initX As Long, initY As Long, finalX As Long, finalY As Long
    initX = curDIBValues.Left
    initY = curDIBValues.Top
    finalX = curDIBValues.Right
    finalY = curDIBValues.Bottom
            
    'These values will help us access locations in the array more quickly.
    ' (qvDepth is required because the image array may be 24 or 32 bits per pixel, and we want to handle both cases.)
    Dim QuickVal As Long, qvDepth As Long
    qvDepth = curDIBValues.BytesPerPixel
    
    'Create a filter support class, which will aid with edge handling and interpolation
    Dim fSupport As pdFilterSupport
    Set fSupport = New pdFilterSupport
    fSupport.setDistortParameters qvDepth, edgeHandling, (superSamplingAmount <> 1), curDIBValues.maxX, curDIBValues.MaxY
    
    'To keep processing quick, only update the progress bar when absolutely necessary.  This function calculates that value
    ' based on the size of the area to be processed.
    Dim progBarCheck As Long
    progBarCheck = findBestProgBarValue()
    
    '***************************************
    ' /* BEGIN SUPERSAMPLING PREPARATION */
    
    'Due to the way this filter works, supersampling yields much better results.  Because supersampling is extremely
    ' energy-intensive, this tool uses a sliding value for quality, as opposed to a binary TRUE/FALSE for antialiasing.
    ' (For all but the lowest quality setting, antialiasing will be used, and higher quality values will simply increase
    '  the amount of supersamples taken.)
    Dim newR As Long, newG As Long, newB As Long, newA As Long
    Dim r As Long, g As Long, b As Long, a As Long
    Dim tmpSum As Long, tmpSumFirst As Long
    
    'Use the passed super-sampling constant (displayed to the user as "quality") to come up with a number of actual
    ' pixels to sample.  (The total amount of sampled pixels will range from 1 to 13).  Note that supersampling
    ' coordinates are precalculated and cached using a modified rotated grid function, which is consistent throughout PD.
    Dim numSamples As Long
    Dim ssX() As Single, ssY() As Single
    Filters_Area.getSupersamplingTable superSamplingAmount, numSamples, ssX, ssY
    
    'Because supersampling will be used in the inner loop as (samplecount - 1), permanently decrease the sample
    ' count in advance.
    numSamples = numSamples - 1
    
    'Additional variables are needed for supersampling handling
    Dim j As Double, k As Double
    Dim sampleIndex As Long, numSamplesUsed As Long
    Dim superSampleVerify As Long, ssVerificationLimit As Long
    
    'Adaptive supersampling allows us to bypass supersampling if a pixel doesn't appear to benefit from it.  The superSampleVerify
    ' variable controls how many pixels are sampled before we perform an adaptation check.  At present, the rule is:
    ' Quality 3: check a minimum of 2 samples, Quality 4: check minimum 3 samples, Quality 5: check minimum 4 samples
    superSampleVerify = superSamplingAmount - 2
    
    'Alongside a variable number of test samples, adaptive supersampling requires some threshold that indicates samples
    ' are close enough that further supersampling is unlikely to improve output.  We calculate this as a minimum variance
    ' as 1.5 per channel (for a total of 6 variance per pixel), multiplied by the total number of samples taken.
    ssVerificationLimit = superSampleVerify * 6
    
    'To improve performance for quality 1 and 2 (which perform no supersampling), we can forcibly disable supersample checks
    ' by setting the verification checker to some impossible value.
    If superSampleVerify <= 0 Then superSampleVerify = LONG_MAX
    
    ' /* END SUPERSAMPLING PREPARATION */
    '*************************************
    
    
    'During a preview, shrink the wavelength to more accurately reflect the final imgae
    If toPreview Then rippleWavelength = rippleWavelength * curDIBValues.previewModifier
    
    'Rippling requires some specialized variables
    
    'First, calculate the center of the image
    Dim midX As Double, midY As Double
    midX = CDbl(finalX - initX) * centerX
    midX = midX + initX
    midY = CDbl(finalY - initY) * centerY
    midY = midY + initY
    
    'Ripple-related values
    Dim theta As Double, sRadius As Double, sRadius2 As Double, sDistance As Double
    
    'X and Y values, remapped around a center point of (0, 0)
    Dim nX As Double, nY As Double
    
    'Source X and Y values, which may or may not be used as part of a bilinear interpolation function
    Dim srcX As Double, srcY As Double
        
    rippleAmplitude = rippleAmplitude / 100
    ripplePhase = ripplePhase * (PI / 180)
    
    'Max radius is calculated as the distance from the center of the image to a corner
    Dim tWidth As Long, tHeight As Long
    tWidth = curDIBValues.Width
    tHeight = curDIBValues.Height
    sRadius = Sqr(tWidth * tWidth + tHeight * tHeight) / 2
              
    sRadius = sRadius * (rippleRadius / 100)
    sRadius2 = sRadius * sRadius
                            
    'Loop through each pixel in the image, converting values as we go
    For x = initX To finalX
        QuickVal = x * qvDepth
    For y = initY To finalY
        
        'Reset all supersampling values
        newR = 0
        newG = 0
        newB = 0
        newA = 0
        numSamplesUsed = 0
        
        'Remap the coordinates around a center point of (0, 0)
        j = x - midX
        k = y - midY
        
        'Sample a number of source pixels corresponding to the user's supplied quality value; more quality means
        ' more samples, and much better representation in the final output.
        For sampleIndex = 0 To numSamples
            
            'Offset the pixel amount by the supersampling lookup table
            nX = j + ssX(sampleIndex)
            nY = k + ssY(sampleIndex)
            
            'Calculate distance automatically
            sDistance = (nX * nX) + (nY * nY)
                    
            'Calculate remapped x and y values
            If sDistance > sRadius2 Then
                srcX = x
                srcY = y
            Else
            
                sDistance = Sqr(sDistance)
                
                'Calculate theta
                theta = rippleAmplitude * Sin((sDistance / rippleWavelength) * PI_DOUBLE - ripplePhase)
                
                'Normalize theta
                theta = theta * ((sRadius - sDistance) / sRadius)
                
                'Factor the wavelength back in
                If (sDistance <> 0) Then theta = theta * (rippleWavelength / sDistance)
                
                srcX = x + (nX * theta)
                srcY = y + (nY * theta)
                
            End If
            
            'Use the filter support class to interpolate and edge-wrap pixels as necessary
            fSupport.getColorsFromSource r, g, b, a, srcX, srcY, srcImageData, x, y
            
            'If adaptive supersampling is active, apply the "adaptive" aspect.  Basically, calculate a variance for the currently
            ' collected samples.  If variance is low, assume this pixel does not require further supersampling.
            ' (Note that this is an ugly shorthand way to calculate variance, but it's fast, and the chance of false outliers is
            '  small enough to make it preferable over a true variance calculation.)
            If sampleIndex = superSampleVerify Then
                
                'Calculate variance for the first two pixels (Q3), three pixels (Q4), or four pixels (Q5)
                tmpSum = (r + g + b + a) * superSampleVerify
                tmpSumFirst = newR + newG + newB + newA
                
                'If variance is below 1.5 per channel per pixel, abort further supersampling
                If Abs(tmpSum - tmpSumFirst) < ssVerificationLimit Then Exit For
            
            End If
            
            'Increase the sample count
            numSamplesUsed = numSamplesUsed + 1
            
            'Add the retrieved values to our running averages
            newR = newR + r
            newG = newG + g
            newB = newB + b
            If qvDepth = 4 Then newA = newA + a
            
        Next sampleIndex
        
        'Find the average values of all samples, apply to the pixel, and move on!
        newR = newR \ numSamplesUsed
        newG = newG \ numSamplesUsed
        newB = newB \ numSamplesUsed
        
        dstImageData(QuickVal + 2, y) = newR
        dstImageData(QuickVal + 1, y) = newG
        dstImageData(QuickVal, y) = newB
        
        'If the image has an alpha channel, repeat the calculation there too
        If qvDepth = 4 Then
            newA = newA \ numSamplesUsed
            dstImageData(QuickVal + 3, y) = newA
        End If
                
    Next y
        If Not toPreview Then
            If (x And progBarCheck) = 0 Then
                If userPressedESC() Then Exit For
                SetProgBarVal x
            End If
        End If
    Next x
    
    'With our work complete, point both ImageData() arrays away from their DIBs and deallocate them
    CopyMemory ByVal VarPtrArray(srcImageData), 0&, 4
    Erase srcImageData
    
    CopyMemory ByVal VarPtrArray(dstImageData), 0&, 4
    Erase dstImageData
    
    'Pass control to finalizeImageData, which will handle the rest of the rendering
    finalizeImageData toPreview, dstPic
        
End Sub

'OK button
Private Sub cmdBar_OKClick()
    Process "Ripple", , buildParams(sltWavelength, sltAmplitude, sltPhase, sltRadius, CLng(cmbEdges.ListIndex), sltQuality, sltXCenter, sltYCenter), UNDO_LAYER
End Sub

Private Sub cmdBar_RequestPreviewUpdate()
    updatePreview
End Sub

Private Sub cmdBar_ResetClick()
    sltXCenter.Value = 0.5
    sltYCenter.Value = 0.5
    sltWavelength.Value = 40
    sltAmplitude.Value = 80
    sltRadius.Value = 100
    sltQuality.Value = 2
    cmbEdges.ListIndex = EDGE_REFLECT
End Sub

Private Sub Form_Activate()
    
    'Apply translations and visual themes
    MakeFormPretty Me
        
    'Create the preview
    cmdBar.markPreviewStatus True
    updatePreview
    
End Sub

Private Sub Form_Load()
    
    'Disable previewing until the form has been fully initialized
    cmdBar.markPreviewStatus False
    
    'I use a central function to populate the edge handling combo box; this way, I can add new methods and have
    ' them immediately available to all distort functions.
    PopDistortEdgeBox cmbEdges, EDGE_REFLECT
    
    'Set up the basic/advanced panels
    btsOptions.AddItem "basic", 0
    btsOptions.AddItem "advanced", 1
    btsOptions.ListIndex = 0
    btsOptions_Click 0
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ReleaseFormTheming Me
End Sub

Private Sub sltAmplitude_Change()
    updatePreview
End Sub

Private Sub sltPhase_Change()
    updatePreview
End Sub

Private Sub sltQuality_Change()
    updatePreview
End Sub

Private Sub sltRadius_Change()
    updatePreview
End Sub

Private Sub sltWavelength_Change()
    updatePreview
End Sub

'Redraw the on-screen preview of the transformed image
Private Sub updatePreview()
    If cmdBar.previewsAllowed Then RippleImage sltWavelength, sltAmplitude, sltPhase, sltRadius, CLng(cmbEdges.ListIndex), sltQuality, sltXCenter, sltYCenter, True, fxPreview
End Sub

'If the user changes the position and/or zoom of the preview viewport, the entire preview must be redrawn.
Private Sub fxPreview_ViewportChanged()
    updatePreview
End Sub

'The user can right-click the preview area to select a new center point
Private Sub fxPreview_PointSelected(xRatio As Double, yRatio As Double)
    
    cmdBar.markPreviewStatus False
    sltXCenter.Value = xRatio
    sltYCenter.Value = yRatio
    cmdBar.markPreviewStatus True
    updatePreview

End Sub

Private Sub sltXCenter_Change()
    updatePreview
End Sub

Private Sub sltYCenter_Change()
    updatePreview
End Sub


