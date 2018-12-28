on run {input, parameters}
	set output to "https://papago.naver.com/?sk=en&tk=ko&st=" & replaceSpace(input as string)
	return output
end run

on replaceSpace(x)
	set cmd to "'require \"cgi\"; puts CGI.escape(STDIN.read.chomp)'"
	do shell script "echo " & quoted form of x & "| ruby -e " & cmd & "| sed 's/+/%20/g'"
end replaceSpace
