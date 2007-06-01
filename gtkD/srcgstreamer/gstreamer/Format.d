/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = gstreamer-GstFormat.html
 * outPack = gstreamer
 * outFile = Format
 * strct   = GstFormat
 * realStrct=
 * ctorStrct=
 * clss    = 
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_format_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Iterator
 * structWrap:
 * 	- GstIterator* -> Iterator
 * module aliases:
 * local aliases:
 */

module gstreamer.Format;

private import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;

private import glib.Str;
private import gstreamer.Iterator;



/**
 * Description
 * GstFormats functions are used to register a new format to the gstreamer
 * core. Formats can be used to perform seeking or conversions/query
 * operations.
 */

/** the main Gtk struct */
protected GstFormat* gstFormat;


/**
 */





/**
 * Get a printable name for the given format. Do not modify or free.
 * format:
 *  a GstFormat
 * Returns:
 *  a reference to the static name of the format or NULL if
 * the format is unknown.
 */
public static char[] getName(GstFormat format)
{
	// const gchar* gst_format_get_name (GstFormat format);
	return Str.toString(gst_format_get_name(format) );
}

/**
 * Get the unique quark for the given format.
 * format:
 *  a GstFormat
 * Returns:
 *  the quark associated with the format or 0 if the format
 * is unknown.
 */
public static GQuark toQuark(GstFormat format)
{
	// GQuark gst_format_to_quark (GstFormat format);
	return gst_format_to_quark(format);
}

/**
 * Create a new GstFormat based on the nick or return an
 * already registered format with that nick.
 * nick:
 *  The nick of the new format
 * description:
 *  The description of the new format
 * Returns:
 *  A new GstFormat or an already registered format
 * with the same nick.
 * MT safe.
 */
public static GstFormat register(char[] nick, char[] description)
{
	// GstFormat gst_format_register (const gchar *nick,  const gchar *description);
	return gst_format_register(Str.toStringz(nick), Str.toStringz(description));
}

/**
 * Return the format registered with the given nick.
 * nick:
 *  The nick of the format
 * Returns:
 *  The format with nick or GST_FORMAT_UNDEFINED
 * if the format was not registered.
 */
public static GstFormat getByNick(char[] nick)
{
	// GstFormat gst_format_get_by_nick (const gchar *nick);
	return gst_format_get_by_nick(Str.toStringz(nick));
}

/**
 * See if the given format is inside the format array.
 * formats:
 *  The format array to search
 * format:
 *  the format to find
 * Returns:
 *  TRUE if the format is found inside the array
 */
public int formatsContains(GstFormat format)
{
	// gboolean gst_formats_contains (const GstFormat *formats,  GstFormat format);
	return gst_formats_contains(gstFormat, format);
}

/**
 * Get details about the given format.
 * format:
 *  The format to get details of
 * Returns:
 *  The GstFormatDefinition for format or NULL on failure.
 * MT safe.
 */
public static GstFormatDefinition* getDetails(GstFormat format)
{
	// const GstFormatDefinition* gst_format_get_details  (GstFormat format);
	return gst_format_get_details(format);
}

/**
 * Iterate all the registered formats. The format definition is read
 * only.
 * Returns:
 *  A GstIterator of GstFormatDefinition.
 * See Also
 * GstPad, GstElement
 */
public static Iterator iterateDefinitions()
{
	// GstIterator* gst_format_iterate_definitions (void);
	return new Iterator( gst_format_iterate_definitions() );
}
