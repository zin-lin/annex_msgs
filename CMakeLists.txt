cmake_minimum_required(VERSION 3.8)
project(annex_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
# uncomment the following section in order to fill in
# further dependencies manually.
# find_package(<dependency> REQUIRED)

find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)


if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

# Get the absolute path of the current source directory
get_filename_component(PACKAGE_DIR "${CMAKE_CURRENT_SOURCE_DIR}" ABSOLUTE)

# Glob for the message files
file(GLOB MSG_FILES_PATH "${PACKAGE_DIR}/msg/*.msg")

# Create a formatted list of message files with relative paths and quotes
set(FORMATTED_MSG_FILES)
foreach(MSG_FILE ${MSG_FILES_PATH})
    file(RELATIVE_PATH REL_PATH "${PACKAGE_DIR}" "${MSG_FILE}")
    list(APPEND FORMATTED_MSG_FILES "${REL_PATH}")
endforeach()

rosidl_generate_interfaces(${PROJECT_NAME}
        ${FORMATTED_MSG_FILES}
        DEPENDENCIES std_msgs geometry_msgs)

ament_package()
