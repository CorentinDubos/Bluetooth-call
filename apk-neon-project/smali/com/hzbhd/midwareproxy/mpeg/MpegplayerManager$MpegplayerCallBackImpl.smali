.class public final Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;
.super Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;
.source "MpegplayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MpegplayerCallBackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public discEjected(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->discEjected(I)V

    return-void
.end method

.method public discQueryEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$200(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)V

    return-void
.end method

.method public discQueryStart(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$100(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;I)V

    return-void
.end method

.method public onDisplayInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onDisplayInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onID3Update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onID3Update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMcuDeviceChange(ZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onMcuDeviceChange(ZZZ)V

    return-void
.end method

.method public onMpegInfos(IIIIIZIZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 507
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v2

    .line 508
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil;->getMediaType(I)Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;

    move-result-object v3

    .line 509
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil;->getPlayStatus(I)Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    move-result-object v4

    .line 510
    invoke-static {p3}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil;->getDiscType(I)Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    move-result-object v5

    .line 511
    invoke-static {p4}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil;->getVideoMode(I)Lcom/hzbhd/midware/constant/MpegConstantsDef$VIDEO_MODE;

    move-result-object v6

    .line 512
    invoke-static/range {p5 .. p5}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil;->getRepeatStatus(I)Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    move-result-object v7

    .line 513
    invoke-static/range {p6 .. p6}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil;->getShuffle(Z)Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SHUFFLE_STATUS;

    move-result-object v8

    .line 514
    invoke-static {}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_STATUS;->values()[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_STATUS;

    move-result-object v1

    aget-object v9, v1, p7

    move/from16 v10, p8

    .line 507
    invoke-interface/range {v2 .. v10}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onMpegInfos(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;Lcom/hzbhd/midware/constant/MpegConstantsDef$VIDEO_MODE;Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SHUFFLE_STATUS;Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_STATUS;Z)V

    return-void
.end method

.method public onMpegPassWordRSP(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onMpegPassWordRSP(Z)V

    return-void
.end method

.method public onMpegPrint(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onMpegPrint(I)V

    return-void
.end method

.method public onMpegUpgradeInd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onMpegUpgradeInd()V

    return-void
.end method

.method public onOtherKeyEvent(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onOtherKeyEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onPlayInfoUpdate(IIIIIIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 524
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v2

    .line 525
    invoke-static {}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->values()[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;

    move-result-object v1

    add-int/lit8 v3, p1, -0x1

    aget-object v3, v1, v3

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 524
    invoke-interface/range {v2 .. v10}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onPlayInfoUpdate(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;IIIIIII)V

    return-void
.end method

.method public onPlayingStatusUpdate(IIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil;->getPlayStatus(I)Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MpegplayerManager"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v1

    .line 495
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil;->getPlayStatus(I)Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    move-result-object v2

    .line 496
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil;->getDiscType(I)Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    move-result-object v3

    .line 497
    invoke-static {p3}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil;->getRepeatStatus(I)Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    move-result-object v4

    .line 498
    invoke-static {}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SHUFFLE_STATUS;->values()[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SHUFFLE_STATUS;

    move-result-object p1

    aget-object v5, p1, p4

    .line 499
    invoke-static {}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;->values()[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;

    move-result-object p1

    aget-object v6, p1, p5

    .line 494
    invoke-interface/range {v1 .. v6}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onPlayingStatusUpdate(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SHUFFLE_STATUS;Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;)V

    return-void
.end method

.method public onPlayingTimeUpdate(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->playTimeUpdate(II)V

    return-void
.end method

.method public onRemoteDirect(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midware/constant/MpegConstantsDef$MOVE_DIRECTION;->values()[Lcom/hzbhd/midware/constant/MpegConstantsDef$MOVE_DIRECTION;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onRemoteDirect(Lcom/hzbhd/midware/constant/MpegConstantsDef$MOVE_DIRECTION;)V

    return-void
.end method

.method public onReportDeviceStatus(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v0

    .line 471
    invoke-static {}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_STATUS;->values()[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_STATUS;

    move-result-object v1

    aget-object p1, v1, p1

    .line 472
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil;->getVideoMode(I)Lcom/hzbhd/midware/constant/MpegConstantsDef$VIDEO_MODE;

    move-result-object p2

    .line 470
    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onReportDeviceStatus(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_STATUS;Lcom/hzbhd/midware/constant/MpegConstantsDef$VIDEO_MODE;)V

    return-void
.end method

.method public onScreenStatus(ZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onScreenStatus(ZZZ)V

    return-void
.end method

.method public playCDTrackUpdate(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->playCDTrackUpdate(II)V

    return-void
.end method

.method public playDVDRootMenuUpdate(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->playDVDRootMenuUpdate(Z)V

    return-void
.end method

.method public playDVDTitleChapterUpdate(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->playDVDTitleChapterUpdate(IIII)V

    return-void
.end method

.method public playROMFileUpdate(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->playROMFileUpdate(III)V

    return-void
.end method

.method public playStatusUpdate(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MpegplayerCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->playStatusUpdate(III)V

    return-void
.end method
