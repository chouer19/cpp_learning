################################################################################
#Find available package generators

# DEB
if ("${CMAKE_SYSTEM}" MATCHES "Linux")
  find_program(DPKG_PROGRAM dpkg)
  if (EXISTS ${DPKG_PROGRAM})
    list (APPEND CPACK_GENERATOR "DEB")
  endif(EXISTS ${DPKG_PROGRAM})

  find_program(RPMBUILD_PROGRAM rpmbuild)
endif()

list (APPEND CPACK_SOURCE_GENERATOR "TBZ2")
list (APPEND CPACK_SOURCE_GENERATOR "ZIP")
list (APPEND CPACK_SOURCE_IGNORE_FILES ";Ogre.log;TODO;/.hg/;.swp$;/build/;.hgtags")

include (InstallRequiredSystemLibraries)

#execute_process(COMMAND dpkg --print-architecture _NPROCE)
set (DEPENDENCIES  "libprotobuf-dev, libprotoc-dev")
set (DEBIAN_PACKAGE_DEPENDS "${DEPENDENCIES}")
set (RPM_PACKAGE_DEPENDS "${DEPENDENCIES}")
set (CYBER_CPACK_CFG_FILE "${PROJECT_BINARY_DIR}/cpack_options.cmake")

set(CPACK_PACKAGE_NAME "${PROJECT_NAME}")
#set(CPACK_PACKAGE_VENDOR "gazebosim.org")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "operating system for automated vehicles")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "${PROJECT_NAME}")
#set(CPACK_RESOURCE_FILE_LICENSE "@CMAKE_CURRENT_SOURCE_DIR@/LICENSE")
#set(CPACK_RESOURCE_FILE_README "@CMAKE_CURRENT_SOURCE_DIR@/README.md")
#set(CPACK_PACKAGE_DESCRIPTION_FILE "@CMAKE_CURRENT_SOURCE_DIR@/README.md")
set(CPACK_PACKAGE_MAINTAINER "XUECHONG <xxx@xxx.org>")
set(CPACK_PACKAGE_CONTACT "XUECHONG <xxx@xxx.org>")

set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE "amd64")
set(CPACK_DEBIAN_PACKAGE_DEPENDS "${DEPENDENCIES}")
#set(CPACK_DEBIAN_PACKAGE_SECTION "devel")
set(CPACK_DEBIAN_PACKAGE_PRIORITY "optional")
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS ON)
set(CPACK_DEBIAN_PACKAGE_DESCRIPTION "operating system for automated vehicles")

set(CPACK_RPM_PACKAGE_ARCHITECTURE "amd64")
set(CPACK_RPM_PACKAGE_REQUIRES "${DEPENDENCIES}")
set(CPACK_RPM_PACKAGE_DESCRIPTION "operating system for automated vehicles")

set (CPACK_PACKAGE_FILE_NAME "CyberRT-${CYBER_VERSION_FULL}")
set (CPACK_SOURCE_PACKAGE_FILE_NAME "CyberRT-${CYBER_VERSION_FULL}")
