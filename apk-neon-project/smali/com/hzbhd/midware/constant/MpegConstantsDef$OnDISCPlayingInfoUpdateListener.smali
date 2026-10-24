.class public interface abstract Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;
.super Ljava/lang/Object;
.source "MpegConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/MpegConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDISCPlayingInfoUpdateListener"
.end annotation


# virtual methods
.method public abstract onCDTrackIndexUpdate(I)V
.end method

.method public abstract onDVDFileIndexUpdate(II)V
.end method

.method public abstract onDiscEjected(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EJECT_STATE;)V
.end method

.method public abstract onDiscQueryEnd()V
.end method

.method public abstract onDiscQueryStart(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;)V
.end method

.method public abstract onDisplayInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onID3Update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMcuDeviceChange(ZZZ)V
.end method

.method public abstract onMpegInfos(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;Lcom/hzbhd/midware/constant/MpegConstantsDef$VIDEO_MODE;Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SHUFFLE_STATUS;Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_STATUS;Z)V
.end method

.method public abstract onMpegPassWordRSP(Z)V
.end method

.method public abstract onMpegPrint(I)V
.end method

.method public abstract onMpegUpgradeInd()V
.end method

.method public abstract onOtherKeyEvent(Ljava/lang/String;)V
.end method

.method public abstract onPlayInfoUpdate(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;IIIIIII)V
.end method

.method public abstract onPlayingStatusUpdate(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SHUFFLE_STATUS;Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;)V
.end method

.method public abstract onPlayingTimeUpdate(II)V
.end method

.method public abstract onRemoteDirect(Lcom/hzbhd/midware/constant/MpegConstantsDef$MOVE_DIRECTION;)V
.end method

.method public abstract onReportDeviceStatus(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_STATUS;Lcom/hzbhd/midware/constant/MpegConstantsDef$VIDEO_MODE;)V
.end method

.method public abstract onRomFileIndexUpdate(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;II)V
.end method

.method public abstract onRootMenuPlayUpdate(Z)V
.end method

.method public abstract onScreenStatus(ZZZ)V
.end method
