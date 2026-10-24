.class Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$1;
.super Landroid/os/Handler;
.source "MpegplayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;Landroid/os/Looper;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$1;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$1;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "MpegplayerManager"

    const-string v0, "mAudioUpdateListener is null"

    .line 196
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 199
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->values()[Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    .line 200
    sget-object v1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$2;->$SwitchMap$com$hzbhd$midwareproxy$mpeg$MpegplayerManager$MPEG_CALLBACK_MSG:[I

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 243
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$ROMFileUpdateStruct;

    .line 244
    invoke-static {}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;->values()[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;

    move-result-object v0

    iget v1, p1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$ROMFileUpdateStruct;->mFileType:I

    aget-object v0, v0, v1

    .line 245
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$1;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v1

    iget v2, p1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$ROMFileUpdateStruct;->mFolderIndex:I

    iget p1, p1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$ROMFileUpdateStruct;->mFileIndex:I

    invoke-interface {v1, v0, v2, p1}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onRomFileIndexUpdate(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_ROM_MEDIA_TYPE;II)V

    goto/16 :goto_1

    .line 237
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$DVDTitleChapterUpdateStruct;

    .line 238
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$1;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v0

    iget v1, p1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$DVDTitleChapterUpdateStruct;->mCurrTitle:I

    iget p1, p1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$DVDTitleChapterUpdateStruct;->mCurrChapter:I

    invoke-interface {v0, v1, p1}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onDVDFileIndexUpdate(II)V

    goto/16 :goto_1

    .line 234
    :pswitch_2
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$1;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, p1}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onCDTrackIndexUpdate(I)V

    goto :goto_1

    .line 231
    :pswitch_3
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$1;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, p1}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onPlayingTimeUpdate(II)V

    goto :goto_1

    .line 222
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$PlayStatusUpdateStruct;

    .line 223
    invoke-static {}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->values()[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    move-result-object v0

    iget v1, p1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$PlayStatusUpdateStruct;->mPlayStatus:I

    aget-object v0, v0, v1

    .line 224
    invoke-static {}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->values()[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    move-result-object v0

    iget v1, p1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$PlayStatusUpdateStruct;->mRepeatStatus:I

    aget-object v0, v0, v1

    .line 225
    iget p1, p1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$PlayStatusUpdateStruct;->mShuffleStatus:I

    if-nez p1, :cond_1

    sget-object p1, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SHUFFLE_STATUS;->SHUFFLE_OFF:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SHUFFLE_STATUS;

    goto :goto_1

    .line 226
    :cond_1
    sget-object p1, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SHUFFLE_STATUS;->SHUFFLE_ON:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SHUFFLE_STATUS;

    goto :goto_1

    .line 218
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 219
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$1;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onRootMenuPlayUpdate(Z)V

    goto :goto_1

    .line 215
    :pswitch_6
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$1;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onDiscQueryEnd()V

    goto :goto_1

    .line 211
    :pswitch_7
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$1;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v0

    .line 212
    invoke-static {}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->values()[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onDiscQueryStart(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;)V

    goto :goto_1

    .line 203
    :pswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_2

    .line 204
    sget-object p1, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EJECT_STATE;->IN:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EJECT_STATE;

    goto :goto_0

    .line 206
    :cond_2
    sget-object p1, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EJECT_STATE;->OUT:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EJECT_STATE;

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$1;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->access$000(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;)Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midware/constant/MpegConstantsDef$OnDISCPlayingInfoUpdateListener;->onDiscEjected(Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EJECT_STATE;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
