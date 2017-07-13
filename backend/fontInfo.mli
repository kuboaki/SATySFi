open HorzBox

type file_name = string

exception FontFormatBroken of Otfm.error
exception NoGlyph of Uchar.t
exception InvalidFontAbbrev of font_abbrev
exception FailToLoadFontFormatOwingToSize   of file_name
exception FailToLoadFontFormatOwingToSystem of string

val initialize : unit -> unit

val get_width_of_word : font_abbrev -> SkipLength.t -> string -> SkipLength.t

val get_tag : font_abbrev -> string

val get_font_dictionary : unit -> (string * Pdf.pdfobject) list
