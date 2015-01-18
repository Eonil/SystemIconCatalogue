//
//  SystemIconNameList.swift
//  SystemIconCatalogue
//
//  Created by Hoon H. on 2015/01/18.
//  Copyright (c) 2015 Eonil. All rights reserved.
//

import Foundation
import AppKit



let	STANDARD_IMAGE_NAME_LIST	=	[

	/* Standard images.

	Most images are named by a specific function or situation where they are intended to be used.  In some cases, the artwork may be more generic than the name.  For example, the image for NSImageNameInvalidDataFreestandingTemplate is an arrow in 10.5.  Please do not use an image outside of the function for which it is intended - the artwork can change between releases.  The invalid data image could change to a yellow exclamation-point-in-triangle  icon.  If there is no image available for the situation you're interested in, please file a bug and use your own custom art in the meantime.

	The size of an image is also not guaranteed to be the same (or maintain the same aspect ratio) between releases, so you should explcitly size the image appropriately for your use.

	Constants that end in the word "Template" name black and clear images that return YES for isTemplate.  These images can be processed into variants appropriate for different situations.  For example, these images can invert in a selected table view row.  See -[NSImage setTemplate:] for more comments.  These images are inappropriate for display without further processing, but NSCell and its subclasses will perform the processing.

	Some images also contain the word "Freestanding".  This indicates that an image is appropriate for use as a borderless button - it doesn't need any extra bezel artwork behind it.  For example, Safari uses NSImageNameStopProgressTemplate as the stop button in a button on its toolbar, while it uses NSImageNameStopProgressFreestandingTemplate in the downloads window where it appears inline with a progress indicator.

	The string value of each symbol is the same as the constant name without the "ImageName" part.  For example, NSImageNameBonjour is @"NSBonjour".  This is documented so that images can be used by name in Interface Builder.

	*/

	NSImageNameQuickLookTemplate,

	NSImageNameBluetoothTemplate,

	NSImageNameIChatTheaterTemplate,

	NSImageNameSlideshowTemplate,

	/*  This image is appropriate on an 'action' button.  An action button is a popup that has the same contents as the contextual menu for a related control.
	*/

	NSImageNameActionTemplate,

	/*  This image can be used as a badge for a 'smart' item.  In 10.5, this and the 'action' image are both gears.  Please avoid using a gear for other situations, and if you do, use custom art.
	*/

	NSImageNameSmartBadgeTemplate,

	/* These images are intended for use in a segmented control for switching view interfaces for another part of the window.
	*/

	NSImageNameIconViewTemplate,

	NSImageNameListViewTemplate,

	NSImageNameColumnViewTemplate,

	NSImageNameFlowViewTemplate,


	NSImageNamePathTemplate,

	/* Place this image to the right of invalid data.  For example, use it if the user tries to commit a form when it's missing a required name field.
	*/

	NSImageNameInvalidDataFreestandingTemplate,

	NSImageNameLockLockedTemplate,

	NSImageNameLockUnlockedTemplate,

	/* Use these images for "go forward" or "go back" functions, as seen in Safari's toolbar.  See also the right and left facing triangle images.
	*/

	NSImageNameGoRightTemplate,

	NSImageNameGoLeftTemplate,

	/* Prefer the "GoLeft" and "GoRight" images for situations where they apply.  These generic triangles aren't endorsed for any particular use, but you can use them if you don't have any better art.
	*/

	NSImageNameRightFacingTriangleTemplate,

	NSImageNameLeftFacingTriangleTemplate,


	NSImageNameAddTemplate,

	NSImageNameRemoveTemplate,

	NSImageNameRevealFreestandingTemplate,

	NSImageNameFollowLinkFreestandingTemplate,

	NSImageNameEnterFullScreenTemplate,

	NSImageNameExitFullScreenTemplate,

	NSImageNameStopProgressTemplate,

	NSImageNameStopProgressFreestandingTemplate,

	NSImageNameRefreshTemplate,

	NSImageNameRefreshFreestandingTemplate,


	NSImageNameBonjour,

	NSImageNameComputer,

	NSImageNameFolderBurnable,

	NSImageNameFolderSmart,

	NSImageNameFolder,

	NSImageNameNetwork,

	/* NSImageNameDotMac will continue to work for the forseeable future, and will return the same image as NSImageNameMobileMe.
	*/


	NSImageNameMobileMe,

	/* This image is appropriate as a drag image for multiple items.
	*/

	NSImageNameMultipleDocuments,

	/* These images are intended for use in toolbars in preference windows.
	*/

	NSImageNameUserAccounts,

	NSImageNamePreferencesGeneral,

	NSImageNameAdvanced,

	/* These images are intended for use in other toolbars.
	*/

	NSImageNameInfo,

	NSImageNameFontPanel,

	NSImageNameColorPanel,

	/* These images are appropriate for use in sharing or permissions interfaces.
	*/

	NSImageNameUser,

	NSImageNameUserGroup,

	NSImageNameEveryone,

	NSImageNameUserGuest,

	/* These images are the default state images used by NSMenuItem.  Drawing these outside of menus is discouraged.
	*/

	NSImageNameMenuOnStateTemplate,

	NSImageNameMenuMixedStateTemplate,

	/* The name @"NSApplicationIcon" has been available since Mac OS X 10.0.  The symbol NSImageNameApplicationIcon is new in 10.6.
	*/

	NSImageNameApplicationIcon,


	NSImageNameTrashEmpty,

	NSImageNameTrashFull,

	NSImageNameHomeTemplate,

	NSImageNameBookmarksTemplate,

	NSImageNameCaution,

	NSImageNameStatusAvailable,

	NSImageNameStatusPartiallyAvailable,

	NSImageNameStatusUnavailable,

	NSImageNameStatusNone,

	NSImageNameShareTemplate,

]
