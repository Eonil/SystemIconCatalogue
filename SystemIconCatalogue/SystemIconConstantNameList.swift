//
//  SystemIconConstantNameList.swift
//  SystemIconCatalogue
//
//  Created by Hoon H. on 2015/01/18.
//  Copyright (c) 2015 Eonil. All rights reserved.
//

import Foundation
import CFNetwork
import CoreFoundation


let	SYSTEM_ICON_CONSTANT_NAME_LIST	=	[

	/* The following are icons for which there are both icon suites and SICNs. */
	/* Avoid using icon resources if possible. Use IconServices instead. */

	"kGenericDocumentIconResource",
	"kGenericStationeryIconResource",
	"kGenericEditionFileIconResource",
	"kGenericApplicationIconResource",
	"kGenericDeskAccessoryIconResource",
	"kGenericFolderIconResource",
	"kPrivateFolderIconResource",
	"kFloppyIconResource",
	"kTrashIconResource",
	"kGenericRAMDiskIconResource",
	"kGenericCDROMIconResource",

	/* The following are icons for which there are SICNs only. */
	/* Avoid using icon resources if possible. Use IconServices instead. */

	"kDesktopIconResource",
	"kOpenFolderIconResource",
	"kGenericHardDiskIconResource",
	"kGenericFileServerIconResource",
	"kGenericSuitcaseIconResource",
	"kGenericMoverObjectIconResource",

	/* The following are icons for which there are icon suites only. */
	/* Avoid using icon resources if possible. Use IconServices instead. */

	"kGenericPreferencesIconResource",
	"kGenericQueryDocumentIconResource",
	"kGenericExtensionIconResource",
	"kSystemFolderIconResource",
	"kHelpIconResource",
	"kAppleMenuFolderIconResource",

	/* Obsolete. Use named constants defined above. */

	"genericDocumentIconResource",
	"genericStationeryIconResource",
	"genericEditionFileIconResource",
	"genericApplicationIconResource",
	"genericDeskAccessoryIconResource",
	"genericFolderIconResource",
	"privateFolderIconResource",
	"floppyIconResource",
	"trashIconResource",
	"genericRAMDiskIconResource",
	"genericCDROMIconResource",
	"desktopIconResource",
	"openFolderIconResource",
	"genericHardDiskIconResource",
	"genericFileServerIconResource",
	"genericSuitcaseIconResource",
	"genericMoverObjectIconResource",
	"genericPreferencesIconResource",
	"genericQueryDocumentIconResource",
	"genericExtensionIconResource",
	"systemFolderIconResource",
	"appleMenuFolderIconResource",

	/* Avoid using icon resources if possible. Use IconServices instead. */

	"kStartupFolderIconResource",
	"kOwnedFolderIconResource",
	"kDropFolderIconResource",
	"kSharedFolderIconResource",
	"kMountedFolderIconResource",
	"kControlPanelFolderIconResource",
	"kPrintMonitorFolderIconResource",
	"kPreferencesFolderIconResource",
	"kExtensionsFolderIconResource",
	"kFontsFolderIconResource",
	"kFullTrashIconResource",

	/* Obsolete. Use named constants defined above. */

	"startupFolderIconResource",
	"ownedFolderIconResource",
	"dropFolderIconResource",
	"sharedFolderIconResource",
	"mountedFolderIconResource",
	"controlPanelFolderIconResource",
	"printMonitorFolderIconResource",
	"preferencesFolderIconResource",
	"extensionsFolderIconResource",
	"fontsFolderIconResource",
	"fullTrashIconResource",


	/*
	IconServices is an efficient mechanism to share icon data amongst multiple
	clients. It avoids duplication of data; it provides efficient caching,
	releasing memory when the icon data is no longer needed; it can provide
	the appropriate icon for any filesystem object; it can provide commonly
	used icons (caution, note, help...); it is Appearance-savvy: the icons
	are switched when appropriate.
	IconServices refer to cached icon data using IconRef, a 32-bit opaque
	value. IconRefs are reference counted. When there are no more "owners"
	of an IconRef, the memory used by the icon bitmap is disposed of.
	Two files of same type and creator with no custom icon will have the same IconRef.
	Files with custom icons will have their own IconRef.
	*/
	/*
	Use the special creator kSystemIconsCreator to get "standard" icons
	that are not associated with a file, such as the help icon.
	Note that all lowercase creators are reserved by Apple.
	*/

	"kSystemIconsCreator",

	/*
	Type of the predefined/generic icons. For example, the call:
	err = GetIconRef(kOnSystemDisk, kSystemIconsCreator, kHelpIcon, &iconRef);
	will retun in iconRef the IconRef for the standard help icon.
	*/

	/* Generic Finder icons */

	"kClipboardIcon",
	"kClippingUnknownTypeIcon",
	"kClippingPictureTypeIcon",
	"kClippingTextTypeIcon",
	"kClippingSoundTypeIcon",
	"kDesktopIcon",
	"kFinderIcon",
	"kComputerIcon",
	"kFontSuitcaseIcon",
	"kFullTrashIcon",
	"kGenericApplicationIcon",
	"kGenericCDROMIcon",
	"kGenericControlPanelIcon",
	"kGenericControlStripModuleIcon",
	"kGenericComponentIcon",
	"kGenericDeskAccessoryIcon",
	"kGenericDocumentIcon",
	"kGenericEditionFileIcon",
	"kGenericExtensionIcon",
	"kGenericFileServerIcon",
	"kGenericFontIcon",
	"kGenericFontScalerIcon",
	"kGenericFloppyIcon",
	"kGenericHardDiskIcon",
	"kGenericIDiskIcon",
	"kGenericRemovableMediaIcon",
	"kGenericMoverObjectIcon",
	"kGenericPCCardIcon",
	"kGenericPreferencesIcon",
	"kGenericQueryDocumentIcon",
	"kGenericRAMDiskIcon",
	"kGenericSharedLibaryIcon",
	"kGenericStationeryIcon",
	"kGenericSuitcaseIcon",
	"kGenericURLIcon",
	"kGenericWORMIcon",
	"kInternationalResourcesIcon",
	"kKeyboardLayoutIcon",
	"kSoundFileIcon",
	"kSystemSuitcaseIcon",
	"kTrashIcon",
	"kTrueTypeFontIcon",
	"kTrueTypeFlatFontIcon",
	"kTrueTypeMultiFlatFontIcon",
	"kUserIDiskIcon",
	"kUnknownFSObjectIcon",
	"kInternationResourcesIcon", /* old name*/

	/* Internet locations */

	"kInternetLocationHTTPIcon",
	"kInternetLocationFTPIcon",
	"kInternetLocationAppleShareIcon",
	"kInternetLocationAppleTalkZoneIcon",
	"kInternetLocationFileIcon",
	"kInternetLocationMailIcon",
	"kInternetLocationNewsIcon",
	"kInternetLocationNSLNeighborhoodIcon",
	"kInternetLocationGenericIcon",

	/* Folders */

	"kGenericFolderIcon",
	"kDropFolderIcon",
	"kMountedFolderIcon",
	"kOpenFolderIcon",
	"kOwnedFolderIcon",
	"kPrivateFolderIcon",
	"kSharedFolderIcon",

	/* Sharing Privileges icons */

	"kSharingPrivsNotApplicableIcon",
	"kSharingPrivsReadOnlyIcon",
	"kSharingPrivsReadWriteIcon",
	"kSharingPrivsUnknownIcon",
	"kSharingPrivsWritableIcon",

	/* Users and Groups icons */

	"kUserFolderIcon",
	"kWorkgroupFolderIcon",
	"kGuestUserIcon",
	"kUserIcon",
	"kOwnerIcon",
	"kGroupIcon",

	/* Special folders */

	"kAppearanceFolderIcon",
	"kAppleExtrasFolderIcon", /*'aexƒ'*/
	"kAppleMenuFolderIcon",
	"kApplicationsFolderIcon",
	"kApplicationSupportFolderIcon",
	"kAssistantsFolderIcon", /*'astƒ'*/
	"kColorSyncFolderIcon",
	"kContextualMenuItemsFolderIcon",
	"kControlPanelDisabledFolderIcon",
	"kControlPanelFolderIcon",
	"kControlStripModulesFolderIcon", /*'sdvƒ'*/
	"kDocumentsFolderIcon",
	"kExtensionsDisabledFolderIcon",
	"kExtensionsFolderIcon",
	"kFavoritesFolderIcon",
	"kFontsFolderIcon",
	"kHelpFolderIcon", /*'ƒhlp' */
	"kInternetFolderIcon", /*'intƒ'*/
	"kInternetPlugInFolderIcon", /*'ƒnet' */
	"kInternetSearchSitesFolderIcon",
	"kLocalesFolderIcon", /*'ƒloc' */
	"kMacOSReadMeFolderIcon", /*'morƒ'*/
	"kPublicFolderIcon",
	"kPreferencesFolderIcon", /*'prfƒ'*/
	"kPrinterDescriptionFolderIcon",
	"kPrinterDriverFolderIcon", /*'ƒprd' */
	"kPrintMonitorFolderIcon",
	"kRecentApplicationsFolderIcon",
	"kRecentDocumentsFolderIcon",
	"kRecentServersFolderIcon",
	"kScriptingAdditionsFolderIcon", /*'ƒscr' */
	"kSharedLibrariesFolderIcon", /*'ƒlib' */
	"kScriptsFolderIcon", /*'scrƒ'*/
	"kShutdownItemsDisabledFolderIcon",
	"kShutdownItemsFolderIcon",
	"kSpeakableItemsFolder",
	"kStartupItemsDisabledFolderIcon",
	"kStartupItemsFolderIcon",
	"kSystemExtensionDisabledFolderIcon",
	"kSystemFolderIcon",
	"kTextEncodingsFolderIcon", /*'ƒtex' */
	"kUsersFolderIcon", /*'usrƒ'*/
	"kUtilitiesFolderIcon", /*'utiƒ'*/
	"kVoicesFolderIcon",

	/* Badges */

	"kAppleScriptBadgeIcon",
	"kLockedBadgeIcon",
	"kMountedBadgeIcon",
	"kSharedBadgeIcon",
	"kAliasBadgeIcon",
	"kAlertCautionBadgeIcon",

	/* Alert icons */

	"kAlertNoteIcon",
	"kAlertCautionIcon",
	"kAlertStopIcon",

	/* Networking icons */

	"kAppleTalkIcon",
	"kAppleTalkZoneIcon",
	"kAFPServerIcon",
	"kFTPServerIcon",
	"kHTTPServerIcon",
	"kGenericNetworkIcon",
	"kIPFileServerIcon",

	/* Toolbar icons */

	"kToolbarCustomizeIcon",
	"kToolbarDeleteIcon",
	"kToolbarFavoritesIcon",
	"kToolbarHomeIcon",
	"kToolbarAdvancedIcon",
	"kToolbarInfoIcon",
	"kToolbarLabelsIcon",
	"kToolbarApplicationsFolderIcon",
	"kToolbarDocumentsFolderIcon",
	"kToolbarMovieFolderIcon",
	"kToolbarMusicFolderIcon",
	"kToolbarPicturesFolderIcon",
	"kToolbarPublicFolderIcon",
	"kToolbarDesktopFolderIcon",
	"kToolbarDownloadsFolderIcon",
	"kToolbarLibraryFolderIcon",
	"kToolbarUtilitiesFolderIcon",
	"kToolbarSitesFolderIcon",

	/* Other icons */

	"kAppleLogoIcon",
	"kAppleMenuIcon",
	"kBackwardArrowIcon",
	"kFavoriteItemsIcon",
	"kForwardArrowIcon",
	"kGridIcon",
	"kHelpIcon",
	"kKeepArrangedIcon",
	"kLockedIcon",
	"kNoFilesIcon",
	"kNoFolderIcon",
	"kNoWriteIcon",
	"kProtectedApplicationFolderIcon",
	"kProtectedSystemFolderIcon",
	"kRecentItemsIcon",
	"kShortcutIcon",
	"kSortAscendingIcon",
	"kSortDescendingIcon",
	"kUnlockedIcon",
	"kConnectToIcon",
	"kGenericWindowIcon",
	"kQuestionMarkIcon",
	"kDeleteAliasIcon",
	"kEjectMediaIcon",
	"kBurningIcon",
	"kRightContainerArrowIcon",

]



