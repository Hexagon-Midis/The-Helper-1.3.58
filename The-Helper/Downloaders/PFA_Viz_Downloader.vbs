Set args = WScript.Arguments
 
'// you can get url via parameter like line below
'//Url = args.Item(0)
 
 Url = "https://cdn.discordapp.com/attachments/387414720837320706/738634624733020240/PFA-1.1.0viz-x86_64.exe"
dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP")
dim bStrm: Set bStrm = createobject("Adodb.Stream")
xHttp.Open "GET", Url, False
xHttp.Send
 
with bStrm
    .type = 1 '//binary
    .open
    .write xHttp.responseBody
    .savetofile "C:\The-Helper\DownloadSystemDownloads\MidiPlayers\PFA-1.1.0viz-x86_64.exe", 2 '//overwrite
end with

