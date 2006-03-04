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
 * outFile = FileChooserButton
 * strct   = GtkFileChooserButton
 * clss    = FileChooserButton
 * prefixes:
 * 	- gtk_file_chooser_button_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.Widget
 * 	- glib.ListSG;
 * 	- gtk.Widget;
 * 	- gtk.FileFilter;
 * 	- gtk.FileChooser;
 * structWrap:
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.FileChooserButton;

private import gtk.typedefs;

private import lib.gtk;

private import gtk.Widget;private import glib.ListSG;;private import gtk.Widget;;private import gtk.FileFilter;;private import gtk.FileChooser;;
/**
 * Description
 * The GtkFileChooserButton is a widget that lets the user select a
 * file. It implements the GtkFileChooser interface. Visually, it is a
 * file name with a button to bring up a GtkFileChooserDialog.
 * The user can then use that dialog to change the file associated with
 * that button. This widget does not support setting the "select-multiple"
 * property to TRUE.
 * Example6.Create a button to let the user select a file in /etc
 * {
	 *  GtkWidget *button;
	 *  button = gtk_file_chooser_button_new (_("Select a file"),
	 *  GTK_FILE_CHOOSER_ACTION_OPEN);
	 *  gtk_file_chooser_set_current_folder (GTK_FILE_CHOOSER (button),
	 *  "/etc");
 * }
 * The GtkFileChooserButton supports the GtkFileChooserActions GTK_FILE_CHOOSER_ACTION_OPEN and GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER.
 * Important
 * The GtkFileChooserButton will ellipsize the label,
 * and thus will thus request little horizontal space. To give the button
 * more space, you should call gtk_widget_size_request(),
 * gtk_file_chooser_button_set_width_chars(), or pack the button in
 * such a way that other interface elements give space to the widget.
 */
private import gtk.HBox;
public class FileChooserButton : HBox
{
	
	/** the main Gtk struct */
	protected GtkFileChooserButton* gtkFileChooserButton;
	
	
	public GtkFileChooserButton* getFileChooserButtonStruct()
	{
		return gtkFileChooserButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkFileChooserButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkFileChooserButton* gtkFileChooserButton)
	{
		super(cast(GtkHBox*)gtkFileChooserButton);
		this.gtkFileChooserButton = gtkFileChooserButton;
	}
	
	private FileChooser fileChooser;
	
	public FileChooser getFileChooser()
	{
		if ( fileChooser is null )
		{
			fileChooser = new FileChooser(cast(GtkFileChooser*)getFileChooserButtonStruct());
		}
		return fileChooser;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new file-selecting button widget.
	 * title:
	 *  the title of the browse dialog.
	 * action:
	 *  the open mode for the widget.
	 * Returns:
	 *  a new button widget.
	 * Since 2.6
	 */
	public this (char[] title, GtkFileChooserAction action)
	{
		// GtkWidget* gtk_file_chooser_button_new (const gchar *title,  GtkFileChooserAction action);
		this(cast(GtkFileChooserButton*)gtk_file_chooser_button_new(std.string.toStringz(title), action) );
	}
	
	/**
	 * Creates a new file-selecting button widget using backend.
	 * title:
	 *  the title of the browse dialog.
	 * action:
	 *  the open mode for the widget.
	 * backend:
	 *  the name of the GtkFileSystem backend to use.
	 * Returns:
	 *  a new button widget.
	 * Since 2.6
	 */
	public this (char[] title, GtkFileChooserAction action, char[] backend)
	{
		// GtkWidget* gtk_file_chooser_button_new_with_backend  (const gchar *title,  GtkFileChooserAction action,  const gchar *backend);
		this(cast(GtkFileChooserButton*)gtk_file_chooser_button_new_with_backend(std.string.toStringz(title), action, std.string.toStringz(backend)) );
	}
	
	/**
	 * Creates a GtkFileChooserButton widget which uses dialog as it's
	 * file-picking window. Note that dialog must be a GtkFileChooserDialog (or
	 * subclass) and must not have GTK_DIALOG_DESTROY_WITH_PARENT set.
	 * dialog:
	 *  the GtkFileChooserDialog widget to use.
	 * Returns:
	 *  a new button widget.
	 * Since 2.6
	 */
	public this (Widget dialog)
	{
		// GtkWidget* gtk_file_chooser_button_new_with_dialog  (GtkWidget *dialog);
		this(cast(GtkFileChooserButton*)gtk_file_chooser_button_new_with_dialog(dialog.getWidgetStruct()) );
	}
	
	/**
	 * Retrieves the title of the browse dialog used by button. The returned value
	 * should not be modified or freed.
	 * button:
	 *  the button widget to examine.
	 * Returns:
	 *  a pointer to the browse dialog's title.
	 * Since 2.6
	 */
	public char[] getTitle()
	{
		// const gchar* gtk_file_chooser_button_get_title  (GtkFileChooserButton *button);
		return std.string.toString(gtk_file_chooser_button_get_title(gtkFileChooserButton) );
	}
	
	/**
	 * Modifies the title of the browse dialog used by button.
	 * button:
	 *  the button widget to modify.
	 * title:
	 *  the new browse dialog title.
	 * Since 2.6
	 */
	public void setTitle(char[] title)
	{
		// void gtk_file_chooser_button_set_title  (GtkFileChooserButton *button,  const gchar *title);
		gtk_file_chooser_button_set_title(gtkFileChooserButton, std.string.toStringz(title));
	}
	
	/**
	 * Retrieves the width in characters of the button widget's entry and/or label.
	 * button:
	 *  the button widget to examine.
	 * Returns:
	 *  an integer width (in characters) that the button will use to size itself.
	 * Since 2.6
	 */
	public int getWidthChars()
	{
		// gint gtk_file_chooser_button_get_width_chars  (GtkFileChooserButton *button);
		return gtk_file_chooser_button_get_width_chars(gtkFileChooserButton);
	}
	
	/**
	 * Sets the width (in characters) that button will use to n_chars.
	 * button:
	 *  the button widget to examine.
	 * n_chars:
	 *  the new width, in characters.
	 * Since 2.6
	 * Property Details
	 * The "dialog" property
	 *  "dialog" GtkFileChooserDialog : Write / Construct Only
	 * Instance of the GtkFileChooserDialog associated with the button.
	 * Since 2.6
	 */
	public void setWidthChars(int nChars)
	{
		// void gtk_file_chooser_button_set_width_chars  (GtkFileChooserButton *button,  gint n_chars);
		gtk_file_chooser_button_set_width_chars(gtkFileChooserButton, nChars);
	}
	
	
}