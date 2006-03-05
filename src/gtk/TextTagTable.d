/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = TextTagTable
 * strct   = GtkTextTagTable
 * realStrct=
 * clss    = TextTagTable
 * extend  = 
 * prefixes:
 * 	- gtk_text_tag_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.TextTagTable
 * 	- gtk.TextTag
 * structWrap:
 * 	- GtkTextTag* -> TextTag
 * 	- GtkTextTagTable* -> TextTagTable
 * local aliases:
 */

module gtk.TextTagTable;

private import gtk.typedefs;

private import lib.gtk;

private import gtk.TextTagTable;private import gtk.TextTag;
/**
 * Description
 * You may wish to begin by reading the text widget
 * conceptual overview which gives an overview of all the objects and data
 * types related to the text widget and how they work together.
 */
private import gobject.ObjectG;
public class TextTagTable : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkTextTagTable* gtkTextTagTable;
	
	
	public GtkTextTagTable* getTextTagTableStruct()
	{
		return gtkTextTagTable;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTextTagTable;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTextTagTable* gtkTextTagTable)
	{
		super(cast(GObject*)gtkTextTagTable);
		this.gtkTextTagTable = gtkTextTagTable;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(TextTag, TextTagTable)[] onTagAddedListeners;
	void addOnTagAdded(void delegate(TextTag, TextTagTable) dlg)
	{
		if ( !("tag-added" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"tag-added",
			cast(GCallback)&callBackTagAdded,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["tag-added"] = 1;
		}
		onTagAddedListeners ~= dlg;
	}
	extern(C) static void callBackTagAdded(GtkTextTagTable* texttagtableStruct, GtkTextTag* arg1, TextTagTable textTagTable)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextTag, TextTagTable) dlg ; textTagTable.onTagAddedListeners )
		{
			dlg(new TextTag(arg1), textTagTable);
		}
		
		return consumed;
	}
	
	void delegate(TextTag, gboolean, TextTagTable)[] onTagChangedListeners;
	void addOnTagChanged(void delegate(TextTag, gboolean, TextTagTable) dlg)
	{
		if ( !("tag-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"tag-changed",
			cast(GCallback)&callBackTagChanged,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["tag-changed"] = 1;
		}
		onTagChangedListeners ~= dlg;
	}
	extern(C) static void callBackTagChanged(GtkTextTagTable* texttagtableStruct, GtkTextTag* arg1, gboolean arg2, TextTagTable textTagTable)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextTag, gboolean, TextTagTable) dlg ; textTagTable.onTagChangedListeners )
		{
			dlg(new TextTag(arg1), arg2, textTagTable);
		}
		
		return consumed;
	}
	
	void delegate(TextTag, TextTagTable)[] onTagRemovedListeners;
	void addOnTagRemoved(void delegate(TextTag, TextTagTable) dlg)
	{
		if ( !("tag-removed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"tag-removed",
			cast(GCallback)&callBackTagRemoved,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["tag-removed"] = 1;
		}
		onTagRemovedListeners ~= dlg;
	}
	extern(C) static void callBackTagRemoved(GtkTextTagTable* texttagtableStruct, GtkTextTag* arg1, TextTagTable textTagTable)
	{
		bit consumed = false;
		
		foreach ( void delegate(TextTag, TextTagTable) dlg ; textTagTable.onTagRemovedListeners )
		{
			dlg(new TextTag(arg1), textTagTable);
		}
		
		return consumed;
	}
	
	
	
	
	/**
	 * Creates a new GtkTextTagTable. The table contains no tags by
	 * default.
	 * Returns:
	 *  a new GtkTextTagTable
	 */
	public static TextTagTable tableNew()
	{
		// GtkTextTagTable* gtk_text_tag_table_new (void);
		return new TextTagTable( gtk_text_tag_table_new() );
	}
	
	/**
	 * Add a tag to the table. The tag is assigned the highest priority
	 * in the table.
	 * tag must not be in a tag table already, and may not have
	 * the same name as an already-added tag.
	 * table:
	 *  a GtkTextTagTable
	 * tag:
	 *  a GtkTextTag
	 */
	public void tableAdd(TextTag tag)
	{
		// void gtk_text_tag_table_add (GtkTextTagTable *table,  GtkTextTag *tag);
		gtk_text_tag_table_add(gtkTextTagTable, tag.getTextTagStruct());
	}
	
	/**
	 * Remove a tag from the table. This will remove the table's
	 * reference to the tag, so be careful - the tag will end
	 * up destroyed if you don't have a reference to it.
	 * table:
	 *  a GtkTextTagTable
	 * tag:
	 *  a GtkTextTag
	 */
	public void tableRemove(TextTag tag)
	{
		// void gtk_text_tag_table_remove (GtkTextTagTable *table,  GtkTextTag *tag);
		gtk_text_tag_table_remove(gtkTextTagTable, tag.getTextTagStruct());
	}
	
	/**
	 * Look up a named tag.
	 * table:
	 *  a GtkTextTagTable
	 * name:
	 *  name of a tag
	 * Returns:
	 *  The tag, or NULL if none by that name is in the table.
	 */
	public TextTag tableLookup(char[] name)
	{
		// GtkTextTag* gtk_text_tag_table_lookup (GtkTextTagTable *table,  const gchar *name);
		return new TextTag( gtk_text_tag_table_lookup(gtkTextTagTable, std.string.toStringz(name)) );
	}
	
	/**
	 * Calls func on each tag in table, with user data data.
	 * Note that the table may not be modified while iterating
	 * over it (you can't add/remove tags).
	 * table:
	 *  a GtkTextTagTable
	 * func:
	 *  a function to call on each tag
	 * data:
	 *  user data
	 */
	public void tableForeach(GtkTextTagTableForeach func, void* data)
	{
		// void gtk_text_tag_table_foreach (GtkTextTagTable *table,  GtkTextTagTableForeach func,  gpointer data);
		gtk_text_tag_table_foreach(gtkTextTagTable, func, data);
	}
	
	/**
	 * Returns the size of the table (number of tags)
	 * table:
	 *  a GtkTextTagTable
	 * Returns:
	 *  number of tags in table
	 * Signal Details
	 * The "tag-added" signal
	 * void user_function (GtkTextTagTable *texttagtable,
	 *  GtkTextTag *arg1,
	 *  gpointer user_data) : Run last
	 * texttagtable:
	 * the object which received the signal.
	 * arg1:
	 * user_data:
	 * user data set when the signal handler was connected.
	 */
	public int tableGetSize()
	{
		// gint gtk_text_tag_table_get_size (GtkTextTagTable *table);
		return gtk_text_tag_table_get_size(gtkTextTagTable);
	}
	
	
}