//
//  UTLIdentifier+KnownTypes.swift
//  Pods-UTLight_Tests
//
//  Created by Lex on 06/12/2018.
//

import Foundation
import MobileCoreServices

public extension UTLIdentifier {
    
    // MARK: - Basics
    
    /**
     `kUTTypeItem` (public.item)
     
     Generic base type for most things (files, directories)
     */
    public static let item = UTLIdentifier(kUTTypeItem)
    
    /**
     `kUTTypeContent` (public.content)
     
     Base type for anything containing user-viewable document content
     (documents, pasteboard data, and document packages.) Types describing
     files or packages must also conform to kUTTypeData or kUTTypePackage
     in order for the system to bind documents to them.
     */
    public static let content = UTLIdentifier(kUTTypeContent)
    
    /**
     `UTTypeCompositeContent` (public.composite-content)
     
     Base type for content formats supporting mixed embedded content
     (i.e., compound documents)
     */
    public static let compositeContent = UTLIdentifier(kUTTypeCompositeContent)
    
    /**
     `kUTTypeMessage` (public.message)
     
     Base type for messages (email, IM, etc.)
     */
    public static let message = UTLIdentifier(kUTTypeMessage)
    
    /**
     `kUTTypeContact` (public.contact)
     
     Contact information, e.g. for a person, group, organization
     */
    public static let contact = UTLIdentifier(kUTTypeContact)
    
    /**
     `kUTTypeArchive` (public.archive)
     
     An archive of files and directories
     */
    public static let archive = UTLIdentifier(kUTTypeArchive)
    
    /**
     `kUTTypeDiskImage` (public.disk)
     
     A data item mountable as a volume
     */
    public static let diskImage = UTLIdentifier(kUTTypeDiskImage)
    
    
    // MARK: - Data & Files
    
    /**
     `kUTTypeData`(public.data)
     
     Base type for any sort of simple byte stream, including files and in-memory data
     
     Conforms to: `public.item`
     */
    public static let data = UTLIdentifier(kUTTypeData)
    
    
    /**
     kUTTypeDirectory (`public.directory`)
     
     File system directory (includes packages AND folders)
     
     Conforms to: public.item
     */
    public static let directory = UTLIdentifier(kUTTypeDirectory)
    
    /**
     kUTTypeResolvable (`com.apple.resolvable`)
     
     Symlink and alias file types conform to this UTI
     */
    public static let resolvable = UTLIdentifier(kUTTypeResolvable)
    
    /**
     kUTTypeSymLink (`public.symlink`)
     
     A symbolic link
     
     Conforms to: `public.item`, `com.apple.resolvable`
     */
    public static let symlink = UTLIdentifier(kUTTypeSymLink)
    
    /**
     kUTTypeExecutable (`public.executable`)
     
     An executable item
     
     Conforms to: `public.item`
     */
    public static let executable = UTLIdentifier(kUTTypeExecutable)
    
    /**
     kUTTypeMountPoint (`com.apple.mount-point`)
     
     A volume mount point (resolvable, resolves to the root dir of a volume)
     
     Conforms to: `public.item`, `com.apple.resolvable`
     */
    public static let mountPoint = UTLIdentifier(kUTTypeMountPoint)
    
    /**
     kUTTypeAliasFile (`com.apple.alias-file`)
     
     A  fully-formed alias file
     
     Conforms to: `public.data`, `com.apple.resolvable`
     */
    public static let aliasFile = UTLIdentifier(kUTTypeAliasFile)
    
    /**
     kUTTypeAliasRecord (`com.apple.alias-record`)
     
     Raw alias data
     
     Conforms to: `public.data`, `com.apple.resolvable`
     */
    public static let aliasRecord = UTLIdentifier(kUTTypeAliasRecord)
    
    /**
     kUTTypeURLBookmarkData (`com.apple.bookmark`)
     
     URL bookmark
     
     Conforms to: `public.data`, `com.apple.resolvable`
     */
    public static let URLBookmarkData = UTLIdentifier(kUTTypeURLBookmarkData)
    
    /**
     kUTTypeURL (`public.url`)
     
     The bytes of a URL.
     
     Conforms to: `public.data`.
     
     OSType: `url`
     */
    public static let URL = UTLIdentifier(kUTTypeURL)
    
    /**
     kUTTypeFileURL (`public.file-url`)
     
     The text of a "file:" URL
     
     Conforms to: `public.url`
     */
    public static let fileURL = UTLIdentifier(kUTTypeFileURL)
    
    
    // MARK: - Text
    
    /**
     kUTTypeText (`public.text`)
     
     Base type for all text-encoded data, including text with markup (HTML, RTF, etc.)
     
     Conforms to: `public.data`, `public.content`
     */
    public static let text = UTLIdentifier(kUTTypeText)
    
    /**
     kUTTypePlainText (`public.plain-text`)
     
     Text with no markup, unspecified encoding
     
     Conforms to: `public.text`
     */
    public static let plainText = UTLIdentifier(kUTTypePlainText)
    
    /**
     kUTTypeUTF8PlainText (`public.utf8-plain-text`)
     
     Plain text, UTF-8 encoding
     
     Conforms to `public.plain-text`
     
     OSType: `utf8`
     
     NSPasteboardType: `NSStringPBoardType`
     */
    public static let UTF8PlainText = UTLIdentifier(kUTTypeUTF8PlainText)
    
    /**
     kUTTypeUTF16ExternalPlainText (`public.utf16-external-plain-text`)
     
     Plain text, UTF-16 encoding, with BOM, or if BOM is not present, has "external representation" byte order (big-endian).
     
     Conforms to: `public.plain-text`
     */
    public static let UTF16ExternalPlainText = UTLIdentifier(kUTTypeUTF16ExternalPlainText)
    
    /**
     kUTTypeUTF16PlainText (`public.utf16-plain-text`)
     
     Plain text, UTF-16 encoding, native byte order, optional BOM
     
     Conforms to: `public.plain-text`
     
     OSType: `utxt`
     */
    public static let UTF16PlainText = UTLIdentifier(kUTTypePlainText)
    
    /**
     kUTTypeDelimitedText (`public.delimited-values-text`)
     
     Text containing delimited values
     
     Conforms to: `public.text`
     */
    public static let delimitedText = UTLIdentifier(kUTTypeDelimitedText)
    
    /**
     kUTTypeCommaSeparatedText (`public.comma-separated-values-text`)
     
     Text containing comma-separated values (.csv)
     
     Conforms to: `public.delimited-values-text`
     */
    public static let commaSeparatedText = UTLIdentifier(kUTTypeDelimitedText)
    
    /**
     kUTTypeTabSeparatedText (`public.tab-separated-values-text`)
     
     Text containing tab-separated values
     
     Conforms to: `public.delimited-values-text`
     */
    public static let tabSeparatedText = UTLIdentifier(kUTTypeTabSeparatedText)
    
    /**
     kUTTypeUTF8TabSeparatedText (`public.utf8-tab-separated-values-text`)
     
     UTF-8 encoded text containing tab-separated values
     
     Conforms to: `public.tab-separated-values-text`, `public.utf8-plain-text`
     */
    public static let UTF8TabSeparatedText = UTLIdentifier(kUTTypeUTF8TabSeparatedText)
    
    /**
     kUTTypeRTF (`public.rtf`)
     
     Rich Text Format
     
     Conforms to: `public.text`
     */
    public static let RTF = UTLIdentifier(kUTTypeRTF)
    
    
    // MARK: - Mark Languages
    
    /**
     kUTTypeHTML (`public.html`)
     
     HTML, any version
     
     Conforms to: `public.text`
     */
    public static let HTML = UTLIdentifier(kUTTypeHTML)
    
    /**
     kUTTypeXML (`public.xml`)
     
     Generic XML
     
     Conforms to: `public.text`
     */
    public static let XML = UTLIdentifier(kUTTypeXML)
    
    
    // MARK: - Sources
    
    /**
     kUTTypeSourceCode (`public.source-code`)
     
     Abstract type for source code (any language)
     
     Conforms to: `public.plain-text`
     */
    public static let sourceCode = UTLIdentifier(kUTTypeSourceCode)
    
    /**
     kUTTypeAssemblyLanguageSource (`public.assembly-source`)
     
     Assembly language source (.s)
     
     Conforms to: `public.source-code`
     */
    public static let assemblyLanugageSource = UTLIdentifier(kUTTypeAssemblyLanguageSource)
    
    /**
     kUTTypeCSource (`public.c-source`)
     
     C source code (.c)
     
     Conforms to: `public.source-code`
     */
    public static let cSource = UTLIdentifier(kUTTypeCSource)
    
    /**
     kUTTypeObjectiveCSource (`public.objective-c-source`)
     
     Objective-C source code (.m)
     
     Conforms to: `public.source-code`
     */
    public static let objectiveCSource = UTLIdentifier(kUTTypeObjectiveCSource)
    
    /**
     kUTTypeSwiftSource (`public.swift-source`)
     
     Swift source code (.swift)
     
     Conforms to `public.source-code`
     */
    public static let swiftSource = UTLIdentifier(kUTTypeSwiftSource)
    
    /**
     kUTTypeCPlusPlusSource (`public.c-plus-plus-source`)
     
     C++ source code (.cp, etc.)
     
     Conforms to: `public.source-code`
     */
    public static let cPlusPlusSource = UTLIdentifier(kUTTypeCPlusPlusSource)
    
    /**
     kUTTypeObjectiveCPlusPlusSource (`public.objective-c-plus-plus-source`)
     
     Objective-C++ source code
     
     Conforms to: `public.source-code`
     */
    public static let objectiveCPlusPlus = UTLIdentifier(kUTTypeObjectiveCPlusPlusSource)
    
    /**
     kUTTypeCHeader (`public.c-header`)
     
     C header
     
     Conforms to: `public.source-code`
     */
    public static let cHeader = UTLIdentifier(kUTTypeCHeader)
    
    /**
     kUTTypeCPlusPlusHeader (`public.c-plus-plus-header`)
     
     C++ header
     
     Conforms to `public.source-code`
     */
    public static let cPlusPlusHeader = UTLIdentifier(kUTTypeCPlusPlusHeader)
    
    /**
     kUTTypeJavaSource (`com.sun.java-source`)
     
     Java source code
     
     Conforms to: `public.source-code`
     */
    public static let javaSource = UTLIdentifier(kUTTypeJavaSource)
    
    
    // MARK: - Scripts
    
    /**
     kUTTypeScript (`public.script`)
     
     Scripting language source
     
     Conforms to: `public.source-code`
     */
    public static let source = UTLIdentifier(kUTTypeScript)
    
    /**
     kUTTypeAppleScript (`com.apple.applescript.text`)
     
     AppleScript text format (.applescript)
     
     Conforms to: `public.script`
     */
    public static let appleScript = UTLIdentifier(kUTTypeAppleScript)
    
    /**
     kUTTypeOSAScript (`com.apple.applescript.script`)
     
     Open Scripting Architecture script binary format (.scpt)
     
     Conforms to: `public.data`, `public.script`
     */
    public static let OSASScript = UTLIdentifier(kUTTypeOSAScript)
    
    /**
     kUTTypeOSAScriptBundle (`com.apple.applescript.script-bundle`)
     
     Open Scripting Architecture script bundle format (.scptd)
     
     Conforms to: `com.apple.bundle`, `com.apple.package`, `public.script`
     */
    public static let OSASScriptBundle = UTLIdentifier(kUTTypeOSAScriptBundle)
    
    /**
     kUTTypeJavaScript (`com.netscape.javascript-source`)
     
     JavaScript source code
     
     Conforms to: `public.source-code`, `public.executable`
     */
    public static let javaScript = UTLIdentifier(kUTTypeJavaScript)
    
    /**
     kUTTypeShellScript (`public.shell-script`)
     
     Base type for shell scripts
     
     Conforms to: `public.script`
     */
    public static let shellScript = UTLIdentifier(kUTTypeShellScript)
    
    /**
     kUTTypePerlScript (`public.perl-script`)
     
     Perl script
     
     Conforms to: `public.shell-script`
     */
    public static let perlScript = UTLIdentifier(kUTTypePerlScript)
    
    /**
     kUTTypePythonScript (`public.python-script`)
     
     Python script
     
     Conforms to: `public.shell-script`
     */
    public static let pythonScript = UTLIdentifier(kUTTypePythonScript)
    
    /**
     kUTTypeRubyScript (`public.ruby-script`)
     
     Ruby script
     
     Conforms to: `public.shell-script`
     */
    
    public static let rubyScript = UTLIdentifier(kUTTypeRubyScript)
    
    /**
     kUTTypePHPScript (`public.php-script`)
     
     PHP script
     
     Conforms to: `public.shell-script`
     */
    public static let PHPScript = UTLIdentifier(kUTTypePHPScript)
    
    
    // MARK: - Property Lists
    
    /**
     kUTTypeJSON (`public.json`)
     
     JavaScript object notation (JSON) data
     
     - note: JSON almost but doesn't quite conform to `com.netscape.javascript-source`
     
     Conforms to: `public.text`
     */
    public static let JSON = UTLIdentifier(kUTTypeJSON)
    
    /**
     kUTTypePropertyList (`com.apple.property`)
     
     Base type for property lists
     
     Conforms to: `public.data`
     */
    public static let propertyList = UTLIdentifier(kUTTypePropertyList)
    
    /**
     kUTTypeXMLPropertyList (`com.apple.xml-property-list`)
     
     XML property list
     
     Conforms to: `public.xml`, `com.apple.property-list`
     */
    public static let XMLPropertyList = UTLIdentifier(kUTTypeXMLPropertyList)
    
    /**
     kUTTypeBinaryPropertyList (`com.apple.binary-property-list`)
     
     XML property list
     
     Conforms to: `com.apple.property-list`
     */
    public static let binaryPropertyList = UTLIdentifier(kUTTypeBinaryPropertyList)
    
    
    // MARK: - Composite content
    
    /**
     kUTTypePDF (`com.adobe.pdf`)
     
     Adobe PDF
     
     Conforms to: `public.data`, `public.composite-content`
     */
    public static let PDF = UTLIdentifier(kUTTypePDF)
    
    /**
     kUTTypeRTFD (`com.apple.rtfd`)
     
     Rich Text Format Directory (RTF with content embedding, on-disk format)
     
     Conforms to: `com.apple.package`, `public.composite-content`
     */
    public static let RTFD = UTLIdentifier(kUTTypeRTFD)
    
    /**
     kUTTypeFlatRTFD (`com.apple.flat-rtfd`)
     
     Flattened RTFD (pasteboard format)
     
     Conforms to: `public.data`, `public.composite-content`
     */
    public static let flatRTFD = UTLIdentifier(kUTTypeFlatRTFD)
    
    /**
     kUTTypeTXNTextAndMultimediaData (`com.apple.txn.text-multimedia-data`)
     
     MLTE (Textension) format for mixed text & multimedia data
     
     Conforms to: `public.data`, `public.composite-content`
     
     OSType: `txtn`
     */
    public static let TXNTextAndMultimediaData = UTLIdentifier(kUTTypeTXNTextAndMultimediaData)
    
    /**
     kUTTypeWebArchive (`com.apple.webarchive`)
     
     The WebKit webarchive format
     
     Conforms to: `public.data`, `public.composite-content`
     */
    public static let webArchive = UTLIdentifier(kUTTypeWebArchive)
    
    
    // MARK: - Images
    
    /**
     kUTTypeImage (`public.image`)
     
     Abstract image data
     
     Conforms to: `public.data`, `public.content`
     */
    public static let image = UTLIdentifier(kUTTypeImage)
    
    /**
     kUTTypeJPEG (`public.jpeg`)
     
     JPEG image
     
     Conforms to: `public.image`
     */
    public static let JPEG = UTLIdentifier(kUTTypeJPEG)
    
    /**
     kUTTypeJPEG2000 (`public.jpeg-2000`)
     
     JPEG-2000 image
     
     Conforms to: `public.image`
     */
    public static let JPEG2000 = UTLIdentifier(kUTTypeJPEG2000)
    
    /**
     kUTTypeTIFF (`public.tiff`)
     
     TIFF image
     
     Conforms to: `public.image`
     */
    public static let TIFF = UTLIdentifier(kUTTypeTIFF)
    
    /**
     kUTTypePICT (`com.apple.pict`)
     
     Quickdraw PICT format
     
     Conforms to: `public.image`
     */
    
    public static let PICT = UTLIdentifier(kUTTypePICT)
    
    /**
     kUTTypeGIF (`com.compuserve.gif`)
     
     GIF image
     
     Conforms to: `public.image`
     */
    public static let GIF = UTLIdentifier(kUTTypeGIF)
    
    /**
     kUTTypePNG (`public.png`)
     
     PNG image
     
     Conforms to: `public.image`
     */
    public static let PNG = UTLIdentifier(kUTTypePNG)
    
    /**
     kUTTypeQuickTimeImage (`com.apple.quicktime-image`)
     
     QuickTime image format (OSType 'qtif')
     
     Conforms to: `public.image`
     */
    public static let quickTimeImage = UTLIdentifier(kUTTypeQuickTimeImage)
    
    /**
     kUTTypeAppleICNS (`com.apple.icns`)
     
     Apple icon data
     
     Conforms to: `public.image`
     */
    public static let appleICNS = UTLIdentifier(kUTTypeAppleICNS)
    
    /**
     kUTTypeBMP (`com.microsoft.bmp`)
     
     Windows bitmap
     
     Conforms to: `public.image`
     */
    public static let BMP = UTLIdentifier(kUTTypeBMP)
    
    /**
     kUTTypeICO (`com.microsoft.ico`)
     
     Windows icon data
     
     Conforms to: `public.image`
     */
    public static let ICO = UTLIdentifier(kUTTypeICO)
    
    /**
     kUTTypeRawImage (`public.camera-raw-image`)
     
     Base type for raw image data (.raw)
     
     Conforms to: `public.image`
     */
    public static let rawImage = UTLIdentifier(kUTTypeRawImage)
    
    /**
     kUTTypeScalableVectorGraphics (`public.svg-image`)
     
     SVG image
     
     Conforms to: `public.image`
     */
    public static let scalableVectorGraphics = UTLIdentifier(kUTTypeScalableVectorGraphics)
    
    /**
     kUTTypeLivePhoto (`com.apple.live-photo`)
     
     Live Photo
     
     - warning: Available Since 9.1.
     */
    public static let livePhoto = UTLIdentifier(newest: .kUTTypeLivePhoto)
    
    
    // MARK: Audio & Video
    
    /**
     kUTTypeAudiovisualContent (`public.audiovisual-content`)
     
     Audio and/or video content
     
     Conforms to: `public.data`, `public.content`
     */
    public static let audiovisualContent = UTLIdentifier(kUTTypeAudiovisualContent)
    
    /**
     kUTTypeMovie (`public.movie`)
     
     A media format which may contain both video and audio. Corresponds to what users would label a "movie".
     
     Conforms to: `public.audiovisual-content`
     */
    public static let movie = UTLIdentifier(kUTTypeMovie)
    
    /**
     kUTTypeVideo (`public.video`)
     
     Pure video (no audio)
     
     Conforms to: `public.movie`
     */
    public static let video = UTLIdentifier(kUTTypeVideo)
    
    /**
     kUTTypeAudio (`public.audio`)
     
     Pure audio (no video)
     
     Conforms to: `public.audiovisual-content`
     */
    public static let audio = UTLIdentifier(kUTTypeAudio)
    
    /**
     kUTTypeQuickTimeMovie (`com.apple.quicktime-movie`)
     
     QuickTime movie
     
     Conforms to: `public.movie`
     */
    public static let quickTimeMovie = UTLIdentifier(kUTTypeQuickTimeMovie)
    
    /**
     kUTTypeMPEG (`public.mpeg`)
     
     MPEG-1 or MPEG-2 movie
     
     Conforms to: `public.movie`
     */
    public static let MPEG = UTLIdentifier(kUTTypeMPEG)
    
    /**
     kUTTypeMPEG2Video (`public.mpeg-2-video`)
     
     MPEG-2 video
     
     Conforms to: `public.video`
     */
    public static let MPEG2 = UTLIdentifier(kUTTypeMPEG2Video)
    
    /**
     kUTTypeMPEG2TransportStream (`public.mpeg-2-transport-stream`)
     
     MPEG-2 Transport Stream movie format
     
     Conforms to: `public.movie`
     */
    public static let MPEG2TransportStream = UTLIdentifier(kUTTypeMPEG2TransportStream)
    
    /**
     kUTTypeMP3 (`public.mp3`)
     
     MP3 audio
     
     Conforms to: `public.audio`
     */
    public static let MP3 = UTLIdentifier(kUTTypeMP3)
    
    /**
     kUTTypeMPEG4 (`public.mpeg-4`)
     
     MPEG-4 movie
     
     Conforms to: `public.movie`
     */
    public static let MPEG4 = UTLIdentifier(kUTTypeMPEG4)
    
    /**
     kUTTypeMPEG4Audio (`MPEG-4 audio layer`)
     
     MPEG-4 audio layer
     
     Conforms to: `public.mpeg-4`, `public.audio`
     */
    public static let MPEG4Audio = UTLIdentifier(kUTTypeMPEG4Audio)
    
    /**
     kUTTypeAppleProtectedMPEG4Audio (`com.apple.protected-mpeg-4-audio`)
     
     Apple protected MPEG4 format (.m4p, iTunes music store format)
     
     Conforms to: `public.audio`
     */
    public static let appleProtectedMPEG4Audio = UTLIdentifier(kUTTypeAppleProtectedMPEG4Audio)
    
    /**
     kUTTypeAppleProtectedMPEG4Video (`com.apple.protected-mpeg-4-video`)
     
     Apple protected MPEG-4 movie
     
     Conforms to: `com.apple.m4v-video`
     */
    public static let appleProtectedMPEG4Video = UTLIdentifier(kUTTypeAppleProtectedMPEG4Video)
    
    /**
     kUTTypeAVIMovie (`public.avi`)
     
     Audio Video Interleaved (AVI) movie format
     
     Conforms to: `public.movie`
     */
    public static let AVIMovie = UTLIdentifier(kUTTypeAVIMovie)
    
    /**
     kUTTypeAudioInterchangeFileFormat (`public.aiff-audio`)
     
     AIFF audio format
     
     Conforms to: `public.aifc-audio`
     */
    public static let audioInterchangeFileFormat = UTLIdentifier(kUTTypeAudioInterchangeFileFormat)
    
    /**
     Exactly the same as`audioInterchangeFileFormat`.
     
     See `UTLIdentifier.audioInterchangeFileFormat`
     */
    public static let AIFF = UTLIdentifier.audioInterchangeFileFormat
    
    /**
     kUTTypeWaveformAudio (`com.microsoft.waveform-audio`)
     
     Waveform audio format (.wav)
     
     Conforms to: `public.audio`
     */
    public static let waveformAudio = UTLIdentifier(kUTTypeWaveformAudio)
    
    /**
     Exactly the same as`waveformAudio`.
     
     See `UTLIdentifier.waveformAudio`
     */
    public static let WAV = UTLIdentifier.waveformAudio
    
    /**
     kUTTypeMIDIAudio (`public.midi-audio`)
     
     MIDI audio format
     
     Conforms to: `public.audio`
     */
    public static let MIDI = UTLIdentifier(kUTTypeMIDIAudio)
    
    
    // MARK: - Playlists
    
    /**
     kUTTypePlaylist (`public.playlist`)
     
     Base type for playlists
     */
    public static let playlist = UTLIdentifier(kUTTypePlaylist)
    
    /**
     kUTTypeM3UPlaylist (`public.m3u-playlist`)
     
     M3U or M3U8 playlist
     
     Conforms to: `public.text`, `public.playlist`
     */
    public static let M3UPlaylist = UTLIdentifier(kUTTypeM3UPlaylist)
    
    
    // MARK: - Folders
    
    /**
     kUTTypeFolder (`public.folder`)
     
     A user-browsable directory (i.e., not a package)
     
     Conforms to: `public.directory`
     */
    public static let folder = UTLIdentifier(kUTTypeFolder)
    
    /**
     kUTTypeVolume (`public.volume`)
     
     The root folder of a volume/mount point
     
     Conforms to: `public.folder`
     */
    public static let volume = UTLIdentifier(kUTTypeVolume)
    
    /**
     kUTTypePackage (`com.apple.package`)
     
     A packaged directory
     
     Conforms to: `public.directory`
     */
    public static let package = UTLIdentifier (kUTTypePackage)
    
    /**
     kUTTypeBundle (`com.apple.bundle`)
     
     A directory conforming to one of the CFBundle layouts
     
     Conforms to: `public.directory`
     */
    public static let bundle = UTLIdentifier(kUTTypeBundle)
    
    /**
     kUTTypePluginBundle (`com.apple.plugin`)
     
     Base type for bundle-based plugins
     
     Conforms to: `com.apple.bundle`, `com.apple.package`
     */
    public static let plugin = UTLIdentifier(kUTTypeBundle)
    
    /**
     kUTTypeSpotlightImporter (`com.apple.metadata-importer`)
     
     A Spotlight metadata importer
     
     Conforms to: `com.apple.plugin`
     */
    public static let spotlightImporter = UTLIdentifier(kUTTypeSpotlightImporter)
    
    /**
     kUTTypeQuickLookGenerator (`com.apple.quicklook-generator`)
     
     A QuickLook preview generator
     
     Conforms to: `com.apple.plugin`
     */
    public static let quickLookGenerator = UTLIdentifier(kUTTypeQuickLookGenerator)
    
    /**
     kUTTypeXPCService (`com.apple.xpc-service`)
     
     An XPC service
     
     Conforms to: `com.apple.bundle`, `com.apple.package`
     */
    public static let XPCService = UTLIdentifier(kUTTypeXPCService)
    
    /**
     kUTTypeFramework (`com.apple.framework`)
     
     A Mac OS X framework
     
     Conforms to: `com.apple.bundle`
     */
    public static let framework = UTLIdentifier(kUTTypeFramework)
    
    
    // MARK: - Applications and Executable Files
    
    /**
     kUTTypeApplication (`com.apple.application`)
     
     Base type for OS X applications, launchable items
     
     Conforms to: `public.executable`
     */
    public static let application = UTLIdentifier(kUTTypeApplication)
    
    /**
     kUTTypeApplicationBundle (`com.apple.application-bundle`)
     
     A bundled application
     
     Conforms to: `com.apple.application`, `com.apple.bundle`, `com.apple.package`
     */
    public static let applicationBundle = UTLIdentifier(kUTTypeApplicationBundle)
    
    /**
     kUTTypeApplicationFile (`com.apple.application-file`)
     
     A single-file Carbon/Classic application
     
     Conforms to: `com.apple.application`, `public.data`
     */
    public static let applicationFile = UTLIdentifier(kUTTypeApplicationFile)
    
    /**
     kUTTypeUnixExecutable (`public.unix-executable`)
     
     A UNIX executable (flat file)
     
     Conforms to: `public.data`, `public.executable`
     */
    public static let unixExecutable = UTLIdentifier(kUTTypeUnixExecutable)
    
    /**
     kUTTypeWindowsExecutable (`com.microsoft.windows-executable`)
     
     A Windows executable (.exe files)
     
     Conforms to: `public.data`, `public.executable`
     */
    public static let windowsExecutable = UTLIdentifier(kUTTypeWindowsExecutable)
    
    /**
     kUTTypeJavaClass (`com.sun.java-class`)
     
     A Java class
     
     Conforms to: `public.data`, `public.executable`
     */
    public static let javaClass = UTLIdentifier(kUTTypeJavaClass)
    /**
     kUTTypeJavaArchive (`com.sun.java-archive`)
     
     A Java archive (.jar)
     
     Conforms to: `public.zip-archive`, `public.executable`
     */
    public static let javaArchive = UTLIdentifier(kUTTypeJavaArchive)
    
    /**
     kUTTypeSystemPreferencesPane (`com.apple.systempreference.prefpane`)
     
     A System Preferences pane
     
     Conforms to: `com.apple.package`, `com.apple.bundle`
     */
    public static let preferencesPane = UTLIdentifier(kUTTypeSystemPreferencesPane)
    
    
    // MARK: - Archives
    
    /**
     kUTTypeGNUZipArchive (`org.gnu.gnu-zip-archive`)
     
     A GNU zip archive (gzip)
     
     Conforms to: `public.data`, `public.archive`
     */
    public static let GRNUZipArchive = UTLIdentifier(kUTTypeGNUZipArchive)
    
    /**
     kUTTypeBzip2Archive (`public.bzip2-archive`)
     
     A bzip2 archive (.bz2)
     
     conforms to: `public.data`, `public.archive`
     */
    public static let Bzip2Archive = UTLIdentifier(kUTTypeBzip2Archive)
    
    /**
     kUTTypeZipArchive (`public.zip-archive`)
     
     A zip archive
     
     Conforms to: `com.pkware.zip-archive`
     */
    public static let zipArchive = UTLIdentifier(kUTTypeZipArchive)
    
    
    // MARK: - Base document types
    
    /**
     kUTTypeSpreadsheet (`public.spreadsheet`)
     
     Base spreadsheet document type
     
     Conforms to: `public.content`
     */
    public static let spreadsheet = UTLIdentifier(kUTTypeSpreadsheet)
    
    /**
     kUTTypePresentation (`public.presentation`)
     
     Base presentation document type
     
     Conforms to: `public.composite-content`
     */
    public static let presentation = UTLIdentifier(kUTTypePresentation)
    
    /**
     kUTTypeDatabase (`public.database`)
     
     A database store
     */
    public static let database = UTLIdentifier(kUTTypeDatabase)
    
    
    // MARK: - Calendar, Contacts, Email
    
    /**
     kUTTypeVCard (`public.vcard`)
     
     vCard format
     
     Conforms to: `public.text`, `public.contact`
     */
    public static let VCard = UTLIdentifier(kUTTypeVCard)
    
    /**
     kUTTypeToDoItem (`public.to-do-item`)
     
     To-do item
     */
    public static let toDoItem = UTLIdentifier(kUTTypeToDoItem)
    
    /**
     kUTTypeCalendarEvent (`public.calendar-event`)
     
     Calendar event
     */
    public static let calendarEvent = UTLIdentifier(kUTTypeCalendarEvent)
    
    /**
     kUTTypeEmailMessage (`public.email-message`)
     
     E-mail message
     
     Conforms to: `public.message`
     */
    public static let emailMessage = UTLIdentifier(kUTTypeEmailMessage)
    
    
    // MARK: - Internet Location
    
    /**
     kUTTypeInternetLocation (`com.apple.internet-location`)
     
     Base type for Apple Internet locations
     
     Conforms to: `public.data`
     */
    public static let internetLocation = UTLIdentifier(kUTTypeInternetLocation)
    
    
    // MARK: - Other
    
    /**
     kUTTypeInkText (`com.apple.ink.inktext`)
     
     Opaque InkText data
     
     Conforms to: `public.data`
     */
    public static let inkText = UTLIdentifier(kUTTypeInkText)
    
    /**
     kUTTypeFont (`public.font`)
     
     Base type for fonts
     */
    public static let font = UTLIdentifier(kUTTypeFont)
    
    /**
     kUTTypeBookmark (`public.bookmark`)
     
     Bookmark
     */
    public static let bookmark = UTLIdentifier(kUTTypeBookmark)
    
    /**
     kUTType3DContent (`public.3d-content`)
     
     Base type for 3D content
     
     Conforms to: `public.content`
     */
    public static let content3D = UTLIdentifier(kUTType3DContent)
    
    /**
     kUTTypePKCS12 (`com.rsa.pkcs-12`)
     
     PKCS#12 format
     
     Conforms to: `public.data`
     */
    public static let PKCS12 = UTLIdentifier(kUTTypePKCS12)
    
    /**
     kUTTypeX509Certificate (`public.x509-certificate`)
     
     X.509 certificate format
     
     Conforms to: `public.data`
     */
    public static let X509Certificate = UTLIdentifier(kUTTypeX509Certificate)
    
    /**
     kUTTypeElectronicPublication (`org.idpf.epub-container`)
     
     ePub format
     
     Conforms to: `public.data`, `public.composite-content`
     */
    public static let electronicPublication = UTLIdentifier(kUTTypeElectronicPublication)
    
    /**
     Exactly the same as `electronicPublication`
     
     See: `UTLIdentifier.electronicPublication`
     */
    public static let ePub = UTLIdentifier.electronicPublication
    
    /**
     kUTTypeLog (`public.log`)
     
     Console log
     */
    public static let log = UTLIdentifier(kUTTypeLog)
}

