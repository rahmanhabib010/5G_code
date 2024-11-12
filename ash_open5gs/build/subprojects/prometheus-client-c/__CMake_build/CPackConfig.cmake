# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BUILD_SOURCE_DIRS "/home/cci/ashish/ash_open5gs/subprojects/prometheus-client-c;/home/cci/ashish/ash_open5gs/build/subprojects/prometheus-client-c/__CMake_build")
set(CPACK_CMAKE_GENERATOR "Ninja")
set(CPACK_COMPONENTS_ALL "")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "/home/cci/.local/lib/python3.8/site-packages/cmake/data/share/cmake-3.30/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "prometheus-client-c built using CMake")
set(CPACK_GENERATOR "TGZ;DEB")
set(CPACK_INNOSETUP_ARCHITECTURE "x64")
set(CPACK_INSTALL_CMAKE_PROJECTS "/home/cci/ashish/ash_open5gs/build/subprojects/prometheus-client-c/__CMake_build;prometheus-client-c;ALL;/")
set(CPACK_INSTALL_PREFIX "/home/cci/ashish/ash_open5gs/install")
set(CPACK_MODULE_PATH "")
set(CPACK_NSIS_DISPLAY_NAME "libprom-dev 0.1.3")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
set(CPACK_NSIS_PACKAGE_NAME "libprom-dev 0.1.3")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OBJCOPY_EXECUTABLE "/usr/bin/objcopy")
set(CPACK_OBJDUMP_EXECUTABLE "/usr/bin/objdump")
set(CPACK_OUTPUT_CONFIG_FILE "/home/cci/ashish/ash_open5gs/build/subprojects/prometheus-client-c/__CMake_build/CPackConfig.cmake")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "/home/cci/ashish/ash_open5gs/subprojects/prometheus-client-c/prom/../README.md")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "A prometheus client library")
set(CPACK_PACKAGE_FILE_NAME "libprom-dev-0.1.3-Linux")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.internal.digitalocean.com/timeseries/prometheus-client-c")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "libprom-dev 0.1.3")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "libprom-dev 0.1.3")
set(CPACK_PACKAGE_NAME "libprom-dev")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "DigitalOcean")
set(CPACK_PACKAGE_VERSION "0.1.3")
set(CPACK_PACKAGE_VERSION_MAJOR "0")
set(CPACK_PACKAGE_VERSION_MINOR "1")
set(CPACK_PACKAGE_VERSION_PATCH "3")
set(CPACK_READELF_EXECUTABLE "/usr/bin/readelf")
set(CPACK_RESOURCE_FILE_LICENSE "/home/cci/.local/lib/python3.8/site-packages/cmake/data/share/cmake-3.30/Templates/CPack.GenericLicense.txt")
set(CPACK_RESOURCE_FILE_README "/home/cci/.local/lib/python3.8/site-packages/cmake/data/share/cmake-3.30/Templates/CPack.GenericDescription.txt")
set(CPACK_RESOURCE_FILE_WELCOME "/home/cci/.local/lib/python3.8/site-packages/cmake/data/share/cmake-3.30/Templates/CPack.GenericWelcome.txt")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_GENERATOR "TBZ2;TGZ;TXZ;TZ")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/home/cci/ashish/ash_open5gs/build/subprojects/prometheus-client-c/__CMake_build/CPackSourceConfig.cmake")
set(CPACK_SOURCE_RPM "OFF")
set(CPACK_SOURCE_TBZ2 "ON")
set(CPACK_SOURCE_TGZ "ON")
set(CPACK_SOURCE_TXZ "ON")
set(CPACK_SOURCE_TZ "ON")
set(CPACK_SOURCE_ZIP "OFF")
set(CPACK_SYSTEM_NAME "Linux")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "Linux")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/home/cci/ashish/ash_open5gs/build/subprojects/prometheus-client-c/__CMake_build/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
