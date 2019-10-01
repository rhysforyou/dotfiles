# Defined in - @ line 1
function inflate --description 'alias inflate ruby -r zlib -e "puts Zlib::Inflate.inflate(STDIN.read)"'
	ruby -r zlib -e "puts Zlib::Inflate.inflate(STDIN.read)" $argv;
end
