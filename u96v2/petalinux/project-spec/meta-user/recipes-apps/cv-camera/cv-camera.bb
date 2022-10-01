#
# Copyright 2022 Xilinx Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

SUMMARY = "cv_camera ROS2 node"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "git://github.com/Kapernikov/cv_camera;branch=master \
           file://0001-Modified-capture-interface-to-use-CAP_GSTREAMER-inst.patch \
           file://0002-Fixed-CMakeLists.txt-to-work-with-yocto-building.patch \
           "
SRCREV = "6eb05f7d79b90423153efd1dfd059436c51d1781"

S = "${WORKDIR}/git"

FILESEXTRAPATHS:prepend := "${THISDIR}:"

ROS_BUILDTOOL_DEPENDS = " \
	ament-cmake-native \
"

DEPENDS = "\
	rclcpp \
  opencv \
  sensor-msgs \
  image-transport \
	cv-bridge \
  std-msgs \
  camera-info-manager \
  builtin-interfaces \
  boost \
	${ROS_BUILDTOOL_DEPENDS} \
"

ROS_BUILD_TYPE = "ament_cmake"
inherit ros_${ROS_BUILD_TYPE}

inherit ros_distro_foxy ros_superflore_generated

