#!/usr/bin/env bash
set -e
source tests/test_common.sh
prepare
build linux_gl_debug linux_gl_debug
build linux_gl_release linux_gl_release
build linux_gles3_debug linux_gles3_debug
build linux_gles3_release linux_gles3_release
build_force_egl linux_gl_egl_debug linux_gl_egl_debug
build_force_egl linux_gl_egl_release linux_gl_egl_release
runtest linux_gl_debug
