//
//  AppDelegate.swift
//  SystemIconCatalogue
//
//  Created by Hoon H. on 2015/01/18.
//  Copyright (c) 2015 Eonil. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

	@IBOutlet weak var window: NSWindow!


	func applicationDidFinishLaunching(aNotification: NSNotification) {
		let	sv	=	NSScrollView()
		let	cv	=	NSCollectionView()
		
		window.contentView	=	sv
		
		sv.hasVerticalScroller		=	true
		sv.hasHorizontalRuler		=	true
		sv.documentView		=	cv
		
		cv.itemPrototype	=	ItemViewController()
		cv.selectable		=	true
		cv.allowsMultipleSelection	=	true
		
		cv.minItemSize		=	ITEM_SIZE
		
		////
		
		let	icons1	=	SystemIconItem.compositeValuesAndNames(SYSTEM_ICON_CONSTANT_VALUE_LIST, names: SYSTEM_ICON_CONSTANT_NAME_LIST)
		let	icons2	=	SystemIconItem.namedIcons()
		cv.content	=	icons1 + icons2
	}
}








class ItemViewController: NSCollectionViewItem {
	override func loadView() {
		super.view		=	NSView()
		
		let	v1			=	NSTextField()
		let	v2			=	NSImageView()
		
		v1.bordered		=	false
		v1.editable		=	false
		v1.alignment	=	NSTextAlignment.CenterTextAlignment
		
		self.view.addSubview(v1)
		self.view.addSubview(v2)
		
		self.textField	=	v1
		self.imageView	=	v2
	}
	
	var systemIconItemRepresentations:SystemIconItem? {
		get {
			return	representedObject as SystemIconItem?
		}
		set(v) {
			representedObject	=	v
		}
	}
	override var representedObject:AnyObject? {
		get {
			return	super.representedObject
		}
		set(v) {
			precondition(v == nil || v is SystemIconItem)
			super.representedObject	=	v
			
			if let m = systemIconItemRepresentations {
				let	sz		=	m.icon.bestRepresentationForRect(CGRect(origin: CGPoint.zeroPoint, size: IMAGE_SIZE), context: nil, hints: nil)!.size
				m.icon.size	=	sz
				self.imageView.image		=	m.icon
				self.textField.stringValue	=	m.title
				
				self.textField.setFrameSize(TITLE_SIZE)
				self.imageView.setFrameSize(IMAGE_SIZE)
				self.imageView.setFrameOrigin(CGPoint(x: 0, y: 30))
			}
		}
	}
}

let	IMAGE_SIZE	=	CGSize(width: 128, height: 128)
let	TITLE_SIZE	=	CGSize(width: 128, height: 30)
let	ITEM_SIZE	=	CGSize(width: 128, height: 128 + 30 + 40)

@objc
final class SystemIconItem: NSObject {
	class func compositeValuesAndNames(values:[Int], names:[String]) -> [SystemIconItem] {
		var	items	=	[] as [SystemIconItem]
		for i in 0..<values.count {
			let	item	=	SystemIconItem(key: values[i], title: names[i])
			items.append(item)
		}
		return	items
	}
	class func namedIcons() -> [SystemIconItem] {
		return	STANDARD_IMAGE_NAME_LIST.map { (m:NSString!)->SystemIconItem in
			return	SystemIconItem(name: m)
		}
	}
	
	let	title:String
	let	icon:NSImage
	
	init(key:Int, title:String) {
		self.title	=	title
		
		let	c1		=	OSType(bitPattern: Int32(key))
		let	t1		=	NSFileTypeForHFSTypeCode(c1)
		let	m1		=	NSWorkspace.sharedWorkspace().iconForFileType(t1)

		self.icon	=	m1
	}
	init(name:String) {
		self.title	=	name
		self.icon	=	NSImage(named: name)!
	}
}









