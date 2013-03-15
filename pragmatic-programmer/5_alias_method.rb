alias old_backquote `
def `(cmd)
   result = old_backquote(cmd)
   if($? != 0)
        puts "*** Command #{cmd} failed: status = #{$?.exitstatus}"
   end
   result
end

puts `sudo lsof -i :80`
