# bslave_python -- builbot slave with mulple python versions
# Copyright 2017 Pavel Pletenev <cpp.create@gmail.com>
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
from asmfreak/bbslave_core
USER root
RUN apt-get install -y \
    software-properties-common\
    python-software-properties
RUN add-apt-repository ppa:fkrull/deadsnakes
RUN apt-get update && apt-get install -y \
    python2.6 python2.6-dev \
    python2.7 python2.7-dev \
    python3.4 python3.4-dev \
    python3.6 python3.6-dev
RUN apt-get install -y python-virtualenv
USER buildbot
