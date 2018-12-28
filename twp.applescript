on run {input, parameters}
	set output to "https://papago.naver.com/?sk=en&tk=ko&st=" & replaceSpace(input as string)
	return output
end run

on replaceSpace(x)
	do shell script "echo " & quoted form of x & "| sed 's/ /%20/g'"
end replaceSpace
