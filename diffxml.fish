function diffxml
  command xmllint --format $argv[1] > .$argv[1]
  command xmllint --format $argv[2] > .$argv[2]
  command diff .$argv[1] .$argv[2]
  command rm .$argv[1] .$argv[2]
end