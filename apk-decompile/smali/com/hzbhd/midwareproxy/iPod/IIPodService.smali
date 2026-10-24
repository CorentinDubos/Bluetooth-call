.class interface abstract Lcom/hzbhd/midwareproxy/iPod/IIPodService;
.super Ljava/lang/Object;
.source "IIPodService.java"


# virtual methods
.method public abstract addAuthenticationListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener;)V
.end method

.method public abstract cancelCommand()B
.end method

.method public abstract enterRemoteUIMode()V
.end method

.method public abstract getArtworkFormats()Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;
.end method

.method public abstract getAuthenticationState()I
.end method

.method public abstract getCurrentPlayingTrackChapterInfo()V
.end method

.method public abstract getCurrentPlayingTrackChapterName(I)V
.end method

.method public abstract getCurrentPlayingTrackChapterPlayStatus(I)V
.end method

.method public abstract getCurrentPlayingTrackIndex()I
.end method

.method public abstract getDBTrackInfo(III)V
.end method

.method public abstract getIndexedPlayingTrackAlbumName(I)Ljava/lang/String;
.end method

.method public abstract getIndexedPlayingTrackArtistName(I)Ljava/lang/String;
.end method

.method public abstract getIndexedPlayingTrackInfo(BII)Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;
.end method

.method public abstract getIndexedPlayingTrackTitle(I)Ljava/lang/String;
.end method

.method public abstract getNumPlayingTracks()I
.end method

.method public abstract getNumberCategorizedDBRecords(B)I
.end method

.method public abstract getPBTrackInfo()V
.end method

.method public abstract getPlayStatus(B)Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;
.end method

.method public abstract getPlaylistInfo(BI)V
.end method

.method public abstract getRepeat()B
.end method

.method public abstract getShuffle()B
.end method

.method public abstract getSupportedEventNotification()Lcom/hzbhd/midwareproxy/iPod/EventNotification;
.end method

.method public abstract getTrackArtworkData(III)Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;
.end method

.method public abstract getTrackArtworkTimes(IIII)Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;
.end method

.method public abstract iPodAudioPause()I
.end method

.method public abstract iPodAudioPlay()I
.end method

.method public abstract iPodAudioSampleRateChange(I)I
.end method

.method public abstract iPodAudioStop()I
.end method

.method public abstract playControl(B)Ljava/lang/String;
.end method

.method public abstract playCurrentSelection(I)B
.end method

.method public abstract playMediaLibraryCurrentSelection(Ljava/lang/String;)V
.end method

.method public abstract removeAuthencationListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener;)V
.end method

.method public abstract resetDBSelection()B
.end method

.method public abstract resetDBSelectionHierarchy(I)B
.end method

.method public abstract retrieveCategorizedDatabaseRecords(BII)V
.end method

.method public abstract selectDBRecord(BI)B
.end method

.method public abstract setCurrentPlayingTrack(I)B
.end method

.method public abstract setCurrentPlayingTrackChapterInfo(I)V
.end method

.method public abstract setDigitalAudioEventListener(Lcom/hzbhd/midwareproxy/iPod/aidl/DigitalAudioEventListener;)V
.end method

.method public abstract setDisplayRemoteLingoRetListener(Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener;)V
.end method

.method public abstract setEventNotification(Lcom/hzbhd/midwareproxy/iPod/EventNotification;)B
.end method

.method public abstract setExtendedInterfaceRetListener(Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;)V
.end method

.method public abstract setGeneralLingoRetListener(Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;)V
.end method

.method public abstract setPlayStatusChangeNotification(Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;)B
.end method

.method public abstract setRemoteEventNotification(Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;)B
.end method

.method public abstract setRepeat(BB)B
.end method

.method public abstract setShuffle(BB)B
.end method

.method public abstract setUIModeCommand(B)B
.end method
