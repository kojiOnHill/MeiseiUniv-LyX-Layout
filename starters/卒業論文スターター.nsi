Unicode true
!define VERSION 2.4

AddBrandingImage right 80
BrandingText "明星大学"
Icon "明星大学ロゴx64.ico"

Name "明星大学経済学部卒業論文スターター"
LoadLanguageFile "${NSISDIR}\Contrib\Language files\Japanese.nlf"
OutFile "卒業論文スターター for Windows.exe"

Var "JPA_DIR"

Page license
Page components
Page directory "pre-directory" "" ""
Page instfiles

LicenseData "LICENSE.txt"

Section "卒業論文用LyXレイアウト"
	ReadEnvStr $0 "HOMEDRIVE"
	ReadEnvStr $1 "HOMEPATH"
	SetOutPath "$0$1\AppData\Roaming\LyX${VERSION}\layouts"
	SetOverwrite on
	File "../明星大学経済学部卒業論文.layout"
	File "../明星大学経済学部卒業論文スケルトン.layout"
	SetOverwrite off
SectionEnd

Section "卒業論文用BibLaTeXスタイル"
	ReadEnvStr $0 "HOMEDRIVE"
	ReadEnvStr $1 "HOMEPATH"
	StrCpy $JPA_DIR "$0$1\texmf\tex\latex\biblatex\meisei"
	SetOutPath $JPA_DIR
	CreateDirectory $JPA_DIR
	SetOverwrite on
	File "../biblatex/meisei.bbx"
	File "../biblatex/meisei.cbx"
	File "../biblatex/meisei.dbx"
	File "../biblatex/jpa.bbx"
	File "../biblatex/jpa.cbx"
	File "../biblatex/jpa.dbx"
	SetOverwrite off
SectionEnd

Section "卒業論文ひな型" SEC_TEMPLATES
	SetOutPath $INSTDIR
	File "../templates/卒業論文.lyx"
	File "../templates/スケルトン.lyx"
	File "../templates/マイ・ライブラリ.bib"
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
VIAddVersionKey "FileVersion" "1.4"
VIProductVersion 1.3.0.0