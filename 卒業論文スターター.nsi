Unicode true
!define VERSION 2.4

AddBrandingImage right 80
BrandingText "明星大学"
Icon "明星大学ロゴx64.ico"

Name "明星大学経済学部卒業論文スターター"
#LoadLanguageFile "${NSISDIR}\Contrib\Language files\Japanese.nlf"
OutFile "卒業論文スターター.exe"

Var "JPA_DIR"

Page license
Page components
Page directory "pre-directory" "" ""
Page instfiles

#LicenseData "LICENSE.txt"

Section "卒業論文用LyXレイアウト"
	ReadEnvStr $0 "HOMEDRIVE"
	ReadEnvStr $1 "HOMEPATH"
	SetOutPath "$0$1\AppData\Roaming\LyX${VERSION}\layouts"
	File "明星大学経済学部卒業論文.layout"
	File "卒業論文スケルトン.layout"
SectionEnd

Section "JPA BibLaTeXスタイル"
	ReadEnvStr $0 "HOMEDRIVE"
	ReadEnvStr $1 "HOMEPATH"
	StrCpy $JPA_DIR "$0$1\texmf\tex\latex\biblatex\jpa"
	SetOutPath $JPA_DIR
	CreateDirectory $JPA_DIR
	File "jpa.bbx"
	File "jpa.cbx"
	File "jpa.dbx"
SectionEnd

Section "卒業論文ひな型" SEC_TEMPLATES
	SetOutPath $INSTDIR
	File "卒業論文.lyx"
	File "スケルトン.lyx"
	File "マイ・ライブラリ.bib"
SectionEnd

Function pre-directory
	SectionGetFlags ${SEC_TEMPLATES} $0
	IntOp $0 $0 & 1
	IntCmp $0 0 unselected selected1 selected2
unselected:
	Abort
selected1:
selected2:
	StrCpy $INSTDIR "$DOCUMENTS\卒業論文"
FunctionEnd

VIAddVersionKey "CompanyName" "明星大学"
VIAddVersionKey "LegalCopyright" "(c) Koji Yokota"
VIAddVersionKey "ProductName" "明星大学経済学部卒業論文スターター"
VIAddVersionKey "FileDescription" "明星大学経済学部の卒業論文執筆に必要なファイルをインストールします"
VIAddVersionKey "FileVersion" "1.0"
VIProductVersion 1.0.0.0