.class public Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;
.super Ljava/lang/Object;
.source "SourceSwitchTools.java"


# static fields
.field public static mSourceIDToActionNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    .line 17
    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->NORMAL_SOURCE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.normal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->FM:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.fm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->RDS:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.rds"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MPEG:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MPEGTEST:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.mpegtest"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->IPOD:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.ipod"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->APP:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.app"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MUSIC:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.music"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->VIDEO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.btphone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTAUDIO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.btaudio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->IMODE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.imode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->CLOSESOURCE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.closesource"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->AUX1:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.aux1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->AUX2:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.aux2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ATV:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.atv"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->DAB:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.dab"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->DABTA:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.dabta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->DVBT:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.dvbt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ISDB:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.isdb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->CAMERA:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.camera"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->DVR:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v3, "com.hzbhd.intent.action.dvr"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTUIPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v3, "com.hzbhd.intent.action.btuiphone"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTUIAUDIO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v3, "com.hzbhd.intent.action.btuiaudio"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->NAVIGATION:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v3, "com.hzbhd.intent.action.navigation"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->SWC:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v3, "com.hzbhd.intent.action.swc"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->REAR:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v3, "com.hzbhd.intent.action.rear"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->EQ:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v3, "com.hzbhd.intent.action.eq"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->SETTINGS:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v3, "com.hzbhd.intent.action.settings"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BLACKOUT:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v3, "com.hzbhd.intent.action.blackout"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->SXM:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v3, "com.hzbhd.intent.action.sxm"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->SD:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v3, "com.hzbhd.intent.action.sd"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->USB:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v3, "com.hzbhd.intent.action.usb"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->USB1:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v3, "com.hzbhd.intent.action.usb1"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->USB2:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v3, "com.hzbhd.intent.action.usb2"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->USB3:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v3, "com.hzbhd.intent.action.usb3"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->REARUSB:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v3, "com.hzbhd.intent.action.rearusb"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ANDROIDPLAYER:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v3, "com.hzbhd.intent.action.androidplayer"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->HDMILINK:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v3, "com.hzbhd.intent.action.hdmilink"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->SLEEP:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->AVOFF:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.avoff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->DTV:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.dtv"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->CARPLAY:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.carplay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ANDROIDAUTO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    const-string v2, "com.hzbhd.intent.action.androidauto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSourceActionNameBySourceID(Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;)Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mSourceIDToActionNameMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getSourceIDFromMountPath(Ljava/lang/String;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;
    .locals 0

    .line 81
    sget-object p0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MUSIC:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    return-object p0
.end method

.method public static mapAction2SourceID(Ljava/lang/String;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;
    .locals 4

    if-eqz p0, :cond_2

    const-string v0, ""

    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.hzbhd.intent.action."

    .line 88
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 90
    sget-object p0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->NULL:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    return-object p0

    .line 93
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 97
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    sget-object p0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->NULL:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
