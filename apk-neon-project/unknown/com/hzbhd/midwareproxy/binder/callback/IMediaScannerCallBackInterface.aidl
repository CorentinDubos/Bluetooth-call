
package com.hzbhd.midwareproxy.binder.callback;

/** service interface */
interface IMediaScannerCallBackInterface
{

	void fileSaveUpdateMusic(String path);
	void fileSaveUpdateVideo(String path);
	void fileSaveUpdateImage(String path);
}