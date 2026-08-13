' Copyright (c) 2013-2026 Bruce A Henderson
' All rights reserved.
'
' Redistribution and use in source and binary forms, with or without
' modification, are permitted provided that the following conditions are met:
'     * Redistributions of source code must retain the above copyright
'       notice, this list of conditions and the following disclaimer.
'     * Redistributions in binary form must reproduce the above copyright
'       notice, this list of conditions and the following disclaimer in the
'       documentation and/or other materials provided with the distribution.
'     * Neither the name of the copyright holder nor the
'       names of its contributors may be used to endorse or promote products
'       derived from this software without specific prior written permission.
'
' THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS ``AS IS'' AND ANY
' EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
' WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
' DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS BE LIABLE FOR ANY
' DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
' (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
' LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
' ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
' (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
' SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
'
SuperStrict


Import BRL.Blitz

Import "../core.mod/src/*.hpp"
Import "../core.mod/src/libs/locale/src/*.hpp"

Import "../core.mod/src/libs/locale/src/boost/locale/encoding/codepage.cpp"

Import "../core.mod/src/libs/locale/src/boost/locale/shared/date_time.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/shared/format.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/shared/formatting.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/shared/generator.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/shared/iconv_codecvt.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/shared/ids.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/shared/localization_backend.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/shared/message.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/shared/mo_lambda.cpp"

Import "../core.mod/src/libs/locale/src/boost/locale/util/codecvt_converter.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/util/default_locale.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/util/encoding.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/util/gregorian.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/util/info.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/util/locale_data.cpp"


?Not Win32
Import "../core.mod/src/libs/locale/src/boost/locale/posix/codecvt.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/posix/collate.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/posix/converter.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/posix/numeric.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/posix/posix_backend.cpp"


?Win32
Import "../core.mod/src/libs/locale/src/boost/locale/win32/collate.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/win32/converter.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/win32/lcid.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/win32/numeric.cpp"
Import "../core.mod/src/libs/locale/src/boost/locale/win32/win_backend.cpp"
?


Import "glue.cpp"

