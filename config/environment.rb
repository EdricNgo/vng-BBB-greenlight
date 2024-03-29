# frozen_string_literal: true

# BigBlueButton open source conferencing system - http://www.bigbluebutton.org/.
#
# Copyright (c) 2018 BigBlueButton Inc. and by respective authors (see below).
#
# This program is free software; you can redistribute it and/or modify it under the
# terms of the GNU Lesser General Public License as published by the Free Software
# Foundation; either version 3.0 of the License, or (at your option) any later
# version.
#
# BigBlueButton is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License along
# with BigBlueButton; if not, see <http://www.gnu.org/licenses/>.

# Load the Rails application.
require_relative 'application'

 
# Initialize the Rails application.
Rails.application.initialize!
# enable detailed CAS logging
require 'casclient'
require 'casclient/frameworks/rails/filter'
cas_logger = CASClient::Logger.new('/root/greenlight/log/cas.log')
cas_logger.level = Logger::DEBUG

 

CASClient::Frameworks::Rails::Filter.configure(
  :cas_base_url  => "https://login.vng.com.vn/",
  :logout_url    => "https://login.vng.com.vn/cas/logout",
  :logger => cas_logger
)
