
execute_process(
COMMAND git rev-parse --abbrev-ref HEAD
WORKING_DIRECTORY "/home/cci/ashish/ash_srsRAN_project"
OUTPUT_VARIABLE GIT_BRANCH
OUTPUT_STRIP_TRAILING_WHITESPACE
)

execute_process(
COMMAND git log -1 --format=%h
WORKING_DIRECTORY "/home/cci/ashish/ash_srsRAN_project"
OUTPUT_VARIABLE GIT_COMMIT_HASH
OUTPUT_STRIP_TRAILING_WHITESPACE
)

message(STATUS "Generating build information")
configure_file(
  /home/cci/ashish/ash_srsRAN_project/lib/support/build_info/hashes.h.in
  /home/cci/ashish/ash_srsRAN_project/build/hashes.h
)
