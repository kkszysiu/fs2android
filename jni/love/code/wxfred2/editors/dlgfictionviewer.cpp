/*
 * Created by Ian "Goober5000" Warfield and "z64555" for the FreeSpace2 Source 
 * Code Project.
 *
 * You may not sell or otherwise commercially exploit the source or things you
 * create based on the source.
 */

#include "editors/dlgfictionviewer.h"

#include "frmfred2.h"

#include "base/wxfred_base.h"

#include <wx/wx.h>

// Public Members:
dlgFictionViewer::dlgFictionViewer( wxWindow* parent, wxWindowID id )
	: fredBase::dlgFictionViewer(parent, id)
{
}

// Protected Members:
void dlgFictionViewer::OnClose( wxCloseEvent& event )
{
	((frmFRED2*) GetParent())->OnChildClosed( this );
	Destroy();
}


