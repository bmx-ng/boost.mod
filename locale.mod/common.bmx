' Copyright (c) 2013-2022 Bruce A Henderson
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

Import "source.bmx"



Extern

	Function bmx_boostlocale_generator_create:Byte Ptr()
	Function bmx_boostlocale_generator_generate:Byte Ptr(handle:Byte Ptr, id:String)

	Function bmx_boostlocale_locale_name:String(handle:Byte Ptr)
	Function bmx_boostlocale_locale_language:String(handle:Byte Ptr)
	Function bmx_boostlocale_locale_country:String(handle:Byte Ptr)
	Function bmx_boostlocale_locale_variant:String(handle:Byte Ptr)
	Function bmx_boostlocale_locale_encoding:String(handle:Byte Ptr)
	Function bmx_boostlocale_locale_utf8:Int(handle:Byte Ptr)
	Function bmx_boostlocale_locale_free(handle:Byte Ptr)

	Function bmx_boostlocale_intasnumber:String(handle:Byte Ptr, value:Int)
	Function bmx_boostlocale_floatasnumber:String(handle:Byte Ptr, value:Float)
	Function bmx_boostlocale_intascurrency:String(handle:Byte Ptr, value:Int)
	Function bmx_boostlocale_floatascurrency:String(handle:Byte Ptr, value:Float)
	
End Extern
