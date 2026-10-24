.class public Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;
.super Landroid/support/v4/app/Fragment;
.source "A2dpPlayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static reportCanbusA2dpInfo:[B


# instance fields
.field private a2dp_album_view_id:Landroid/widget/ImageView;

.field private a2dp_jump_2_phone:Landroid/widget/ImageView;

.field private albumTitle:Landroid/widget/TextView;

.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private artisTitle:Landroid/widget/TextView;

.field private isMute:Z

.field private mMuteBtn:Landroid/widget/ImageButton;

.field private playBtn:Landroid/widget/ImageButton;

.field private rl_a2dp_play_pause_btn_id:Landroid/view/View;

.field private songTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 50
    fill-array-data v0, :array_0

    sput-object v0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->reportCanbusA2dpInfo:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0xbt
        0x30t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static byteMerger([B[B)[B
    .locals 3

    .line 181
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 182
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private changeMuteIcon()V
    .locals 3

    const v0, 0x7f040014

    .line 298
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 299
    iget-boolean v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->isMute:Z

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->mMuteBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    const v1, 0x7f0817e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->mMuteBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    const v1, 0x7f0817e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initNM6(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f040014

    .line 136
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const v0, 0x7f090029

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->mMuteBtn:Landroid/widget/ImageButton;

    .line 138
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090022

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initUI_H1()V
    .locals 4

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initUI_H1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f040015

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "__sswang"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "H1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 312
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTAUDIO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    sget-object v2, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    const/4 v3, 0x0

    .line 313
    invoke-virtual {v0, v1, v2, v3}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->audioChannelRequest(Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "A2dpPlayFragment"

    const-string v1, "initUI_H1: BTAudio is Error"

    .line 315
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    new-instance v1, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment$1;

    invoke-direct {v1, p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment$1;-><init>(Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;)V

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->registerA2DPCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;)V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;
    .locals 1

    .line 59
    new-instance v0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    invoke-direct {v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;-><init>()V

    .line 60
    invoke-virtual {v0, p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private sendLauncherBTMusicTitle(Ljava/lang/String;)V
    .locals 2

    .line 230
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTAUDIO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    invoke-virtual {v1}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "song.title.change.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "SongTitle"

    .line 232
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/high16 v0, 0x10000000

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 264
    :sswitch_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getA2dpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqAvrcpBackward(Ljava/lang/String;)Z

    goto :goto_0

    .line 268
    :sswitch_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->avrcpPlayOrPause()Z

    goto :goto_0

    .line 272
    :sswitch_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getA2dpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqAvrcpForward(Ljava/lang/String;)Z

    goto :goto_0

    .line 283
    :sswitch_3
    iget-boolean p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->isMute:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->isMute:Z

    .line 284
    invoke-static {}, Lcom/hzbhd/midwareproxy/dsp/DspManager;->getInstance()Lcom/hzbhd/midwareproxy/dsp/DspManager;

    move-result-object p1

    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTAUDIO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    iget-boolean v1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->isMute:Z

    invoke-virtual {p1, v0, v1}, Lcom/hzbhd/midwareproxy/dsp/DspManager;->setSourceMute(Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;Z)V

    .line 285
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->changeMuteIcon()V

    goto :goto_0

    .line 277
    :sswitch_4
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 288
    :sswitch_5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 289
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 290
    sget-object v0, Lcom/hzbhd/midware/constant/HzbhdComponentName;->DspMainActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 294
    :goto_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090022 -> :sswitch_5
        0x7f090024 -> :sswitch_4
        0x7f090029 -> :sswitch_3
        0x7f09002a -> :sswitch_2
        0x7f09002c -> :sswitch_1
        0x7f09002d -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const p3, 0x7f04002c

    .line 90
    invoke-static {p3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p3

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090030

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->songTitle:Landroid/widget/TextView;

    const p2, 0x7f09001f

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->artisTitle:Landroid/widget/TextView;

    const p2, 0x7f09001b

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->albumTitle:Landroid/widget/TextView;

    .line 96
    iget-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->songTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->requestFocus()Z

    const p2, 0x7f09002d

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09002c

    .line 98
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->playBtn:Landroid/widget/ImageButton;

    const p3, 0x7f09002a

    .line 99
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f040014

    .line 100
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    const v1, 0x7f09001c

    .line 101
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->a2dp_album_view_id:Landroid/widget/ImageView;

    .line 102
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 104
    :cond_0
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v1, v3, :cond_1

    const v1, 0x7f0901fc

    .line 105
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->rl_a2dp_play_pause_btn_id:Landroid/view/View;

    :cond_1
    const v1, 0x7f040039

    .line 107
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f090024

    .line 108
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->a2dp_jump_2_phone:Landroid/widget/ImageView;

    .line 109
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_2
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->playBtn:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->isA2dpPlaying()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 116
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    if-ne p2, p3, :cond_3

    .line 117
    iget-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->rl_a2dp_play_pause_btn_id:Landroid/view/View;

    if-eqz p2, :cond_3

    const p3, 0x7f080bf1

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    :cond_3
    iget-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->playBtn:Landroid/widget/ImageButton;

    const p3, 0x7f040062

    invoke-static {p3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 120
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p2

    if-ne p2, v2, :cond_6

    .line 121
    iget-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 123
    :cond_4
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    if-ne p2, p3, :cond_5

    .line 124
    iget-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->rl_a2dp_play_pause_btn_id:Landroid/view/View;

    if-eqz p2, :cond_5

    const p3, 0x7f080bf2

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 126
    :cond_5
    iget-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->playBtn:Landroid/widget/ImageButton;

    const p3, 0x7f040063

    invoke-static {p3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 127
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p2

    if-ne p2, v2, :cond_6

    .line 128
    iget-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 130
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->initUI_H1()V

    .line 131
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->initNM6(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 151
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 152
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->reportDestroyCanbusInfo(Landroid/content/Context;)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 157
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 159
    :try_start_0
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string v1, "mChildFragmentManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 161
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 165
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 163
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 171
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 0

    .line 176
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 189
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 190
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqAvrcpUpdateSongStatus()V

    .line 191
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->reportCanbusInfo(Landroid/content/Context;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 196
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 201
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 145
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setA2dpPlayState(I)V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->playBtn:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0xc

    const v2, 0x7f0a0015

    const v3, 0x7f040014

    if-ne p1, v0, :cond_2

    .line 242
    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 243
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->rl_a2dp_play_pause_btn_id:Landroid/view/View;

    if-eqz p1, :cond_1

    const v0, 0x7f080bf1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 245
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->playBtn:Landroid/widget/ImageButton;

    const v0, 0x7f040062

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 246
    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 247
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 250
    :cond_2
    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 251
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->rl_a2dp_play_pause_btn_id:Landroid/view/View;

    if-eqz p1, :cond_3

    const v0, 0x7f080bf2

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 253
    :cond_3
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->playBtn:Landroid/widget/ImageButton;

    const v0, 0x7f040063

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 254
    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 255
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_4
    :goto_0
    return-void
.end method

.method public setId3Info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 224
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->setSongTitle(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, p2}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->setSongArtis(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0, p3}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->setSongAlbum(Ljava/lang/String;)V

    return-void
.end method

.method public setSongAlbum(Ljava/lang/String;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->albumTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSongArtis(Ljava/lang/String;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->artisTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSongTitle(Ljava/lang/String;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->songTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->sendLauncherBTMusicTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
