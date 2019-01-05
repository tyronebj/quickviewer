
# WARNING : automatically generated by utils/generate.py

QT -= core gui
TARGET = 7z

CONFIG += dll
CONFIG += warn_off
TEMPLATE = lib

DESTDIR = ../../lib

unix: LIBS += -ldl

DEFINES+=USE_LIB7Z_DLL

P7ZIP = $$PWD/../Qt7z/p7zip

INCLUDEPATH += \
  $$P7ZIP/CPP/myWindows \
  $$P7ZIP/CPP \
  $$P7ZIP/CPP/include_windows \

DEFINES += EXTERNAL_CODECS
DEFINES += _FILE_OFFSET_BITS=64
DEFINES += _LARGEFILE_SOURCE
DEFINES += _REENTRANT
DEFINES += ENV_UNIX
DEFINES += BREAK_HANDLER
DEFINES += UNICODE
DEFINES += _UNICODE
DEFINES += UNIX_USE_WIN_FILE
#DEFINES += _SFX

SOURCES +=  \
  $$P7ZIP/C/7zBuf2.c \
  $$P7ZIP/C/7zCrc.c \
  $$P7ZIP/C/7zCrcOpt.c \
  $$P7ZIP/C/7zStream.c \
  $$P7ZIP/C/Aes.c \
  $$P7ZIP/C/Alloc.c \
  $$P7ZIP/C/Bcj2.c \
  $$P7ZIP/C/Bcj2Enc.c \
  $$P7ZIP/C/Blake2s.c \
  $$P7ZIP/C/Bra.c \
  $$P7ZIP/C/Bra86.c \
  $$P7ZIP/C/BraIA64.c \
  $$P7ZIP/C/BwtSort.c \
  $$P7ZIP/C/CpuArch.c \
  $$P7ZIP/C/Delta.c \
  $$P7ZIP/C/HuffEnc.c \
  $$P7ZIP/C/LzFind.c \
  $$P7ZIP/C/LzFindMt.c \
  $$P7ZIP/C/Lzma2Dec.c \
  $$P7ZIP/C/Lzma2Enc.c \
  $$P7ZIP/C/LzmaDec.c \
  $$P7ZIP/C/LzmaEnc.c \
  $$P7ZIP/C/MtCoder.c \
  $$P7ZIP/C/Ppmd7.c \
  $$P7ZIP/C/Ppmd7Dec.c \
  $$P7ZIP/C/Ppmd7Enc.c \
  $$P7ZIP/C/Ppmd8.c \
  $$P7ZIP/C/Ppmd8Dec.c \
  $$P7ZIP/C/Ppmd8Enc.c \
  $$P7ZIP/C/Sha1.c \
  $$P7ZIP/C/Sha256.c \
  $$P7ZIP/C/Sort.c \
  $$P7ZIP/C/Threads.c \
  $$P7ZIP/C/Xz.c \
  $$P7ZIP/C/XzCrc64.c \
  $$P7ZIP/C/XzCrc64Opt.c \
  $$P7ZIP/C/XzDec.c \
  $$P7ZIP/C/XzEnc.c \
  $$P7ZIP/C/XzIn.c \
  $$P7ZIP/CPP/7zip/Archive/7z/7zCompressionMode.cpp \
  $$P7ZIP/CPP/7zip/Archive/7z/7zDecode.cpp \
  $$P7ZIP/CPP/7zip/Archive/7z/7zEncode.cpp \
  $$P7ZIP/CPP/7zip/Archive/7z/7zExtract.cpp \
  $$P7ZIP/CPP/7zip/Archive/7z/7zFolderInStream.cpp \
  $$P7ZIP/CPP/7zip/Archive/7z/7zHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/7z/7zHandlerOut.cpp \
  $$P7ZIP/CPP/7zip/Archive/7z/7zHeader.cpp \
  $$P7ZIP/CPP/7zip/Archive/7z/7zIn.cpp \
  $$P7ZIP/CPP/7zip/Archive/7z/7zOut.cpp \
  $$P7ZIP/CPP/7zip/Archive/7z/7zProperties.cpp \
  $$P7ZIP/CPP/7zip/Archive/7z/7zRegister.cpp \
  $$P7ZIP/CPP/7zip/Archive/7z/7zSpecStream.cpp \
  $$P7ZIP/CPP/7zip/Archive/7z/7zUpdate.cpp \
  $$P7ZIP/CPP/7zip/Archive/ApmHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/ArHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/ArchiveExports.cpp \
  $$P7ZIP/CPP/7zip/Archive/ArjHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/Bz2Handler.cpp \
  $$P7ZIP/CPP/7zip/Archive/Cab/CabBlockInStream.cpp \
  $$P7ZIP/CPP/7zip/Archive/Cab/CabHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/Cab/CabHeader.cpp \
  $$P7ZIP/CPP/7zip/Archive/Cab/CabIn.cpp \
  $$P7ZIP/CPP/7zip/Archive/Cab/CabRegister.cpp \
  $$P7ZIP/CPP/7zip/Archive/Chm/ChmHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/Chm/ChmIn.cpp \
  $$P7ZIP/CPP/7zip/Archive/ComHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/Common/CoderMixer2.cpp \
  $$P7ZIP/CPP/7zip/Archive/Common/DummyOutStream.cpp \
  $$P7ZIP/CPP/7zip/Archive/Common/FindSignature.cpp \
  $$P7ZIP/CPP/7zip/Archive/Common/HandlerOut.cpp \
  $$P7ZIP/CPP/7zip/Archive/Common/InStreamWithCRC.cpp \
  $$P7ZIP/CPP/7zip/Archive/Common/ItemNameUtils.cpp \
  $$P7ZIP/CPP/7zip/Archive/Common/MultiStream.cpp \
  $$P7ZIP/CPP/7zip/Archive/Common/OutStreamWithCRC.cpp \
  $$P7ZIP/CPP/7zip/Archive/Common/OutStreamWithSha1.cpp \
  $$P7ZIP/CPP/7zip/Archive/Common/ParseProperties.cpp \
  $$P7ZIP/CPP/7zip/Archive/CpioHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/CramfsHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/DeflateProps.cpp \
  $$P7ZIP/CPP/7zip/Archive/DllExports2.cpp \
  $$P7ZIP/CPP/7zip/Archive/DmgHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/ElfHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/ExtHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/FatHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/FlvHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/GzHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/GptHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/HandlerCont.cpp \
  $$P7ZIP/CPP/7zip/Archive/HfsHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/IhexHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/Iso/IsoHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/Iso/IsoHeader.cpp \
  $$P7ZIP/CPP/7zip/Archive/Iso/IsoIn.cpp \
  $$P7ZIP/CPP/7zip/Archive/Iso/IsoRegister.cpp \
  $$P7ZIP/CPP/7zip/Archive/LzhHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/LzmaHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/MachoHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/MbrHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/MslzHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/MubHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/Nsis/NsisDecode.cpp \
  $$P7ZIP/CPP/7zip/Archive/Nsis/NsisHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/Nsis/NsisIn.cpp \
  $$P7ZIP/CPP/7zip/Archive/Nsis/NsisRegister.cpp \
  $$P7ZIP/CPP/7zip/Archive/NtfsHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/PeHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/PpmdHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/QcowHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/Rar/RarHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/Rar/Rar5Handler.cpp \
  $$P7ZIP/CPP/7zip/Archive/RpmHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/SplitHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/SquashfsHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/SwfHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/Tar/TarHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/Tar/TarHandlerOut.cpp \
  $$P7ZIP/CPP/7zip/Archive/Tar/TarHeader.cpp \
  $$P7ZIP/CPP/7zip/Archive/Tar/TarIn.cpp \
  $$P7ZIP/CPP/7zip/Archive/Tar/TarOut.cpp \
  $$P7ZIP/CPP/7zip/Archive/Tar/TarRegister.cpp \
  $$P7ZIP/CPP/7zip/Archive/Tar/TarUpdate.cpp \
  $$P7ZIP/CPP/7zip/Archive/Udf/UdfHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/Udf/UdfIn.cpp \
  $$P7ZIP/CPP/7zip/Archive/UefiHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/VdiHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/VhdHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/VmdkHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/Wim/WimHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/Wim/WimHandlerOut.cpp \
  $$P7ZIP/CPP/7zip/Archive/Wim/WimIn.cpp \
  $$P7ZIP/CPP/7zip/Archive/Wim/WimRegister.cpp \
  $$P7ZIP/CPP/7zip/Archive/XarHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/XzHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/ZHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/Zip/ZipAddCommon.cpp \
  $$P7ZIP/CPP/7zip/Archive/Zip/ZipHandler.cpp \
  $$P7ZIP/CPP/7zip/Archive/Zip/ZipHandlerOut.cpp \
  $$P7ZIP/CPP/7zip/Archive/Zip/ZipIn.cpp \
  $$P7ZIP/CPP/7zip/Archive/Zip/ZipItem.cpp \
  $$P7ZIP/CPP/7zip/Archive/Zip/ZipOut.cpp \
  $$P7ZIP/CPP/7zip/Archive/Zip/ZipRegister.cpp \
  $$P7ZIP/CPP/7zip/Archive/Zip/ZipUpdate.cpp \
  $$P7ZIP/CPP/7zip/Common/CWrappers.cpp \
  $$P7ZIP/CPP/7zip/Common/CreateCoder.cpp \
  $$P7ZIP/CPP/7zip/Common/FilterCoder.cpp \
  $$P7ZIP/CPP/7zip/Common/InBuffer.cpp \
  $$P7ZIP/CPP/7zip/Common/InOutTempBuffer.cpp \
  $$P7ZIP/CPP/7zip/Common/LimitedStreams.cpp \
  $$P7ZIP/CPP/7zip/Common/MemBlocks.cpp \
  $$P7ZIP/CPP/7zip/Common/MethodId.cpp \
  $$P7ZIP/CPP/7zip/Common/MethodProps.cpp \
  $$P7ZIP/CPP/7zip/Common/OffsetStream.cpp \
  $$P7ZIP/CPP/7zip/Common/OutBuffer.cpp \
  $$P7ZIP/CPP/7zip/Common/OutMemStream.cpp \
  $$P7ZIP/CPP/7zip/Common/ProgressMt.cpp \
  $$P7ZIP/CPP/7zip/Common/ProgressUtils.cpp \
  $$P7ZIP/CPP/7zip/Common/PropId.cpp \
  $$P7ZIP/CPP/7zip/Common/StreamBinder.cpp \
  $$P7ZIP/CPP/7zip/Common/StreamObjects.cpp \
  $$P7ZIP/CPP/7zip/Common/StreamUtils.cpp \
  $$P7ZIP/CPP/7zip/Common/UniqBlocks.cpp \
  $$P7ZIP/CPP/7zip/Common/VirtThread.cpp \
  $$P7ZIP/CPP/7zip/Compress/BZip2Crc.cpp \
  $$P7ZIP/CPP/7zip/Compress/BZip2Decoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/BZip2Encoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/BZip2Register.cpp \
  $$P7ZIP/CPP/7zip/Compress/Bcj2Coder.cpp \
  $$P7ZIP/CPP/7zip/Compress/Bcj2Register.cpp \
  $$P7ZIP/CPP/7zip/Compress/BcjCoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/BcjRegister.cpp \
  $$P7ZIP/CPP/7zip/Compress/BitlDecoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/BranchMisc.cpp \
  $$P7ZIP/CPP/7zip/Compress/BranchRegister.cpp \
  $$P7ZIP/CPP/7zip/Compress/ByteSwap.cpp \
  $$P7ZIP/CPP/7zip/Compress/CodecExports.cpp \
  $$P7ZIP/CPP/7zip/Compress/CopyCoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/CopyRegister.cpp \
  $$P7ZIP/CPP/7zip/Compress/Deflate64Register.cpp \
  $$P7ZIP/CPP/7zip/Compress/DeflateDecoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/DeflateEncoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/DeflateRegister.cpp \
  $$P7ZIP/CPP/7zip/Compress/DeltaFilter.cpp \
  $$P7ZIP/CPP/7zip/Compress/ImplodeDecoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/ImplodeHuffmanDecoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/LzOutWindow.cpp \
  $$P7ZIP/CPP/7zip/Compress/LzhDecoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/Lzma2Decoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/Lzma2Encoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/Lzma2Register.cpp \
  $$P7ZIP/CPP/7zip/Compress/LzmaDecoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/LzmaEncoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/LzmaRegister.cpp \
  $$P7ZIP/CPP/7zip/Compress/LzmsDecoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/LzxDecoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/PpmdDecoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/PpmdEncoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/PpmdRegister.cpp \
  $$P7ZIP/CPP/7zip/Compress/PpmdZip.cpp \
  $$P7ZIP/CPP/7zip/Compress/QuantumDecoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/ShrinkDecoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/ZDecoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/XpressDecoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/ZlibDecoder.cpp \
  $$P7ZIP/CPP/7zip/Compress/ZlibEncoder.cpp \
  $$P7ZIP/CPP/7zip/Crypto/7zAes.cpp \
  $$P7ZIP/CPP/7zip/Crypto/7zAesRegister.cpp \
  $$P7ZIP/CPP/7zip/Crypto/HmacSha1.cpp \
  $$P7ZIP/CPP/7zip/Crypto/HmacSha256.cpp \
  $$P7ZIP/CPP/7zip/Crypto/MyAes.cpp \
  $$P7ZIP/CPP/7zip/Crypto/MyAesReg.cpp \
  $$P7ZIP/CPP/7zip/Crypto/Pbkdf2HmacSha1.cpp \
  $$P7ZIP/CPP/7zip/Crypto/RandGen.cpp \
  $$P7ZIP/CPP/7zip/Crypto/Rar20Crypto.cpp \
  $$P7ZIP/CPP/7zip/Crypto/Rar5Aes.cpp \
  $$P7ZIP/CPP/7zip/Crypto/RarAes.cpp \
  $$P7ZIP/CPP/7zip/Crypto/WzAes.cpp \
  $$P7ZIP/CPP/7zip/Crypto/ZipCrypto.cpp \
  $$P7ZIP/CPP/7zip/Crypto/ZipStrong.cpp \
  $$P7ZIP/CPP/Common/CRC.cpp \
  $$P7ZIP/CPP/Common/CrcReg.cpp \
  $$P7ZIP/CPP/Common/DynLimBuf.cpp \
  $$P7ZIP/CPP/Common/IntToString.cpp \
  $$P7ZIP/CPP/Common/MyMap.cpp \
  $$P7ZIP/CPP/Common/MyString.cpp \
  $$P7ZIP/CPP/Common/MyVector.cpp \
  $$P7ZIP/CPP/Common/MyWindows.cpp \
  $$P7ZIP/CPP/Common/MyXml.cpp \
  $$P7ZIP/CPP/Common/NewHandler.cpp \
  $$P7ZIP/CPP/Common/Sha1Reg.cpp \
  $$P7ZIP/CPP/Common/Sha256Reg.cpp \
  $$P7ZIP/CPP/Common/StringConvert.cpp \
  $$P7ZIP/CPP/Common/StringToInt.cpp \
  $$P7ZIP/CPP/Common/UTFConvert.cpp \
  $$P7ZIP/CPP/Common/Wildcard.cpp \
  $$P7ZIP/CPP/Common/XzCrc64Reg.cpp \
  $$P7ZIP/CPP/Windows/FileDir.cpp \
  $$P7ZIP/CPP/Windows/FileFind.cpp \
  $$P7ZIP/CPP/Windows/FileIO.cpp \
  $$P7ZIP/CPP/Windows/FileName.cpp \
  $$P7ZIP/CPP/Windows/PropVariant.cpp \
  $$P7ZIP/CPP/Windows/PropVariantUtils.cpp \
  $$P7ZIP/CPP/Windows/Synchronization.cpp \
  $$P7ZIP/CPP/Windows/System.cpp \
  $$P7ZIP/CPP/Windows/TimeUtils.cpp \
  $$P7ZIP/CPP/myWindows/wine_date_and_time.cpp \

macx: LIBS += -framework CoreFoundation

