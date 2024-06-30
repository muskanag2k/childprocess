#!/usr/bin/env ruby

def start_process(command)
  puts "Starting process: #{command.join(' ')}"

  pid = fork do
    exec(*command)
  end

  _, status = Process.wait2(pid)
  status
end

if ARGV.empty?
  puts "Wrong command input"
  exit 1
end

command = ARGV

loop do
  exit_status = start_process(command)

  if exit_status.success?
    puts "Process exited normally with status #{exit_status.exitstatus}"
    break
  else
    puts "Process crashed with status #{exit_status.exitstatus}. Restarting..."
  end
end
