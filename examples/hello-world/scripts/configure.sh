#!/bin/bash
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -e

TEMP_DIR="/tmp"
PYTHON_FILE_SERVER_ROOT=${TEMP_DIR}/python-simple-http-webserver
if [ -d ${PYTHON_FILE_SERVER_ROOT} ]; then
	echo "Removing file server root folder ${PYTHON_FILE_SERVER_ROOT}"
	rm -rf ${PYTHON_FILE_SERVER_ROOT}
fi
ctx logger info "Creating HTTP server root directory at ${PYTHON_FILE_SERVER_ROOT}"

mkdir -p ${PYTHON_FILE_SERVER_ROOT}

cd ${PYTHON_FILE_SERVER_ROOT}

index_path="index.html"
image_path="images/aria-logo.png"

ctx logger info "Downloading blueprint resources..."
ctx download-resource-and-render ${PYTHON_FILE_SERVER_ROOT}/index.html ${index_path}
ctx download-resource ${PYTHON_FILE_SERVER_ROOT}/aria-logo.png ${image_path}

