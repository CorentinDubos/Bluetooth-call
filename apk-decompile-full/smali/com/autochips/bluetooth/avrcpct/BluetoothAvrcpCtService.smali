.class public Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;
.super Landroid/app/Service;
.source "BluetoothAvrcpCtService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvpClientDeathHandler;,
        Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;
    }
.end annotation


# static fields
.field public static final ACTION_BROWSE_CHANGED:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.BROWSE_CHANGED"

.field public static final ACTION_BTMUSIC_ACTION_MANAGE:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.ACTION_BTMUSIC_ACTION_MANAGE"

.field public static final ACTION_BTMUSIC_INTERACTIVE:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.ACTION_BTMUSIC_INTERACTIVE"

.field public static final ACTION_GET_CAPABILITY_CNF:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.GET_CAPABILITY_CNF"

.field public static final ACTION_GET_ELEMENT_ATTRIBUTES:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.GET_ELEMENT_ATTRIBUTES"

.field public static final ACTION_GET_ITEM_ATTRIBUTES:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.GET_ITEM_ATTRIBUTES"

.field public static final ACTION_GET_PLAYER_STATUS:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.GET_PLAYER_STATUS"

.field public static final ACTION_INFORM_DISPLAYABLE_CHARSET_CNF:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.INFORM_DISPLAYABLE_CHARSET_CNF"

.field public static final ACTION_PASSTHROUGH_COMMAND_CNF:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.PASSTHROUGH_COMMAND_CNF"

.field public static final ACTION_REG_NOTIFICATION_ERROR:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.REG_NOTIFICATION_ERROR"

.field public static final ACTION_REG_NOTIFICATION_POS_CHANGED:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.REG_NOTIFICATION_POS_CHANGED"

.field public static final ACTION_REG_NOTIFICATION_STATUS_CHANGED:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.REG_NOTIFICATION_STATUS_CHANGED"

.field public static final ACTION_REG_NOTIFICATION_TRACK_CHANGED:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.REG_NOTIFICATION_TRACK_CHANGED"

.field public static final ACTION_SERVICE_CREATED:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.SERVICE_CREATED"

.field public static final ATTRIBUTE_ID:[Ljava/lang/String;

.field public static final AUDIO_RELEASE:I = 0x0

.field public static final AUDIO_REQUEST:I = 0x1

.field public static final AVRCP_KEY_BACKWARD:I = 0x4c

.field public static final AVRCP_KEY_FORWARD:I = 0x4b

.field public static final AVRCP_KEY_PAUSE:I = 0x46

.field public static final AVRCP_KEY_PLAY:I = 0x44

.field public static final AVRCP_KEY_STOP:I = 0x45

.field public static final AVRCP_KEY_VOLUME_DOWN:I = 0x42

.field public static final AVRCP_KEY_VOLUME_UP:I = 0x41

.field public static final BROWSE_STATE:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.BROWSE_STATE"

.field public static final BTMUSIC_AUDIO_OFF:I = 0x0

.field public static final BTMUSIC_AUDIO_ON:I = 0x1

.field public static final BT_AVRCP_RESULT_ERROR:C = '\u1001'

.field public static final BT_AVRCP_RESULT_INTERNAL_ERROR:C = '\u1003'

.field public static final BT_AVRCP_RESULT_INVALID_ROLE:C = '\u1002'

.field public static final BT_AVRCP_RESULT_SUCCESS:C = '\u1000'

.field public static final BWS_MTU:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.BWS_MTU"

.field public static final CAPABILITY_ID:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.CAPABILITY_ID"

.field public static final CHARSET:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.CHARSET"

.field public static final COMMAND_BTMUSIC_ACTION_SET:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.COMMAND_BTMUSIC_ACTION_SET"

.field public static final COUNT:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.COUNT"

.field private static DEBUG:Z = false

.field public static final ERROR_CODE:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ERROR_CODE"

.field public static final EVENTS_SUPPORTED:[Ljava/lang/String;

.field public static final EVENT_ID:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENT_ID"

.field public static final EXTRA_BTMUSIC_DEVICE:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.BTMUSIC_DEVICE"

.field public static final EXTRA_BTMUSIC_INTERACTIVE:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EXTRA_BTMUSIC_INTERACTIVE"

.field private static final FAIL:B = 0x1t

.field public static final IDENTIFIER:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.IDENTIFIER"

.field public static final IS_INTERIM:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.IS_INTERIM"

.field public static final IS_PRESS:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.IS_PRESS"

.field public static final KEY_VALUE:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.KEY_VALUE"

.field public static final MAX_ATTRIBUTES_NUM:I = 0xa

.field private static final OK:B = 0x0t

.field public static final PASSTHROUGH_KEY:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.PASSTHROUGH_KEY"

.field public static final PAUSED:I = 0x2

.field public static final PAUSING:I = 0x3

.field public static final PLAYING:I = 0x1

.field public static final PLAY_STATUS:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.PLAY_STATUS"

.field public static final REMOTE_DEVICE_ADDR:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.REMOTE_DEVICE_ADDR"

.field public static final REMOTE_TG_FEATURE:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.REMOTE_TG_FEATURE"

.field public static final REMOTE_TG_VERSION:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.REMOTE_TG_VERSION"

.field public static final RESULT:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.RESULT"

.field public static final SONG_LENGTH:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.SONG_LENGTH"

.field public static final SONG_POSITION:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.SONG_POSITION"

.field public static final STOPPED:I = 0x0

.field public static final STOPPING:I = 0x4

.field public static final TAG:Ljava/lang/String; = "BluetoothAvrcpCtService"

.field private static final TASK_A2DP_AUDIO_CHECK:I = 0x2

.field private static final TASK_A2DP_PAUSE_CHECK:I = 0x1

.field private static final TASK_A2DP_PLAY_CHECK:I

.field public static final VALUE:[Ljava/lang/String;

.field public static volatile mAudioState:I

.field public static mAvrcpCtState:I

.field private static volatile mCBM:Landroid/cbm/CBManager;

.field public static mPlaybackStatus:I

.field public static posChangedEventStatus:I

.field public static trackChangedEventStatus:I


# instance fields
.field avrcp_browse_state_changed_intent:Landroid/content/Intent;

.field avrcp_btmusic_interaction_intent:Landroid/content/Intent;

.field avrcp_get_capability_cnf_intent:Landroid/content/Intent;

.field avrcp_get_element_attributes_cnf_intent:Landroid/content/Intent;

.field avrcp_get_item_attributes_cnf_intent:Landroid/content/Intent;

.field avrcp_get_player_status_cnf_intent:Landroid/content/Intent;

.field avrcp_inform_displayable_charset_cnf_intent:Landroid/content/Intent;

.field avrcp_passthrough_command_cnf_intent:Landroid/content/Intent;

.field avrcp_reg_noification_error_cnf_intent:Landroid/content/Intent;

.field avrcp_reg_notification_playback_changed_cnf_intent:Landroid/content/Intent;

.field avrcp_reg_notification_pos_changed_cnf_intent:Landroid/content/Intent;

.field avrcp_reg_notification_track_changed_cnf_intent:Landroid/content/Intent;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAvrcpCtBinder:Landroid/bluetooth/IBluetoothAvrcpCt$Stub;

.field public mAvrcpCtBrowseState:I

.field private final mAvrcpCtPlayerManageBinder:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;

.field private mCBMActionListener:Landroid/cbm/CBManager$OnActionListener;

.field private volatile mIsForeground:Z

.field private mListener:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;

.field private mLock:Ljava/lang/Object;

.field private mNativeData:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTask:Ljava/util/TimerTask;

.field private mTaskList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/TimerTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskTimeout:I

.field private mTimer:Ljava/util/Timer;

.field public playbackChangedEventStatus:I

.field public remoteAvrcpTgAddr:Ljava/lang/String;

.field public remoteAvrcpTgDevice:Landroid/bluetooth/BluetoothDevice;

.field public remoteAvrcpTgVersion:C

.field service_create_intent:Landroid/content/Intent;

.field update_state_intent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 75
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugMusic:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->DEBUG:Z

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ATTRIBUTE_ID_0"

    const-string v2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ATTRIBUTE_ID_1"

    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ATTRIBUTE_ID_2"

    const-string v4, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ATTRIBUTE_ID_3"

    const-string v5, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ATTRIBUTE_ID_4"

    const-string v6, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ATTRIBUTE_ID_5"

    const-string v7, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ATTRIBUTE_ID_6"

    const-string v8, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ATTRIBUTE_ID_7"

    const-string v9, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ATTRIBUTE_ID_8"

    const-string v10, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ATTRIBUTE_ID_9"

    .line 117
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->ATTRIBUTE_ID:[Ljava/lang/String;

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.VALUE_0"

    const-string v2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.VALUE_1"

    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.VALUE_2"

    const-string v4, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.VALUE_3"

    const-string v5, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.VALUE_4"

    const-string v6, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.VALUE_5"

    const-string v7, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.VALUE_6"

    const-string v8, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.VALUE_7"

    const-string v9, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.VALUE_8"

    const-string v10, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.VALUE_9"

    .line 130
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->VALUE:[Ljava/lang/String;

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENTS_0"

    const-string v2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENTS_1"

    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENTS_2"

    const-string v4, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENTS_3"

    const-string v5, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENTS_4"

    const-string v6, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENTS_5"

    const-string v7, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENTS_6"

    const-string v8, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENTS_7"

    const-string v9, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENTS_8"

    const-string v10, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENTS_9"

    const-string v11, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENTS_10"

    const-string v12, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENTS_11"

    const-string v13, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENTS_12"

    const-string v14, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENTS_13"

    const-string v15, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENTS_14"

    const-string v16, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENTS_15"

    const-string v17, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENTS_16"

    const-string v18, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENTS_17"

    const-string v19, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENTS_18"

    const-string v20, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENTS_19"

    .line 186
    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->EVENTS_SUPPORTED:[Ljava/lang/String;

    const/4 v0, 0x2

    .line 256
    sput v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    const/4 v0, 0x0

    .line 270
    sput v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mPlaybackStatus:I

    .line 275
    sput v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->trackChangedEventStatus:I

    .line 276
    sput v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->posChangedEventStatus:I

    const/4 v1, 0x0

    .line 302
    sput-object v1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mCBM:Landroid/cbm/CBManager;

    .line 305
    sput v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAudioState:I

    const-string v0, "extavrcpct_jni"

    .line 320
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->classInitNative()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 72
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/16 v0, 0x12

    .line 257
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtBrowseState:I

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    .line 261
    iput-char v1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgVersion:C

    .line 262
    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgAddr:Ljava/lang/String;

    .line 277
    iput v1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->playbackChangedEventStatus:I

    .line 280
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->update_state_intent:Landroid/content/Intent;

    .line 281
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.SERVICE_CREATED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->service_create_intent:Landroid/content/Intent;

    .line 282
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.BROWSE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_browse_state_changed_intent:Landroid/content/Intent;

    .line 283
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.GET_ELEMENT_ATTRIBUTES"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_element_attributes_cnf_intent:Landroid/content/Intent;

    .line 284
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.GET_ITEM_ATTRIBUTES"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_item_attributes_cnf_intent:Landroid/content/Intent;

    .line 285
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.GET_PLAYER_STATUS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_player_status_cnf_intent:Landroid/content/Intent;

    .line 286
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.REG_NOTIFICATION_STATUS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_playback_changed_cnf_intent:Landroid/content/Intent;

    .line 287
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.REG_NOTIFICATION_POS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_pos_changed_cnf_intent:Landroid/content/Intent;

    .line 288
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.REG_NOTIFICATION_TRACK_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_track_changed_cnf_intent:Landroid/content/Intent;

    .line 289
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.PASSTHROUGH_COMMAND_CNF"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_passthrough_command_cnf_intent:Landroid/content/Intent;

    .line 290
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.REG_NOTIFICATION_ERROR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_noification_error_cnf_intent:Landroid/content/Intent;

    .line 291
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.INFORM_DISPLAYABLE_CHARSET_CNF"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_inform_displayable_charset_cnf_intent:Landroid/content/Intent;

    .line 292
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.GET_CAPABILITY_CNF"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_capability_cnf_intent:Landroid/content/Intent;

    .line 293
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.ACTION_BTMUSIC_INTERACTIVE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_btmusic_interaction_intent:Landroid/content/Intent;

    .line 301
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mLock:Ljava/lang/Object;

    .line 306
    iput-boolean v1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mIsForeground:Z

    .line 313
    iput v1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTaskTimeout:I

    .line 314
    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTimer:Ljava/util/Timer;

    .line 315
    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTask:Ljava/util/TimerTask;

    .line 316
    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTaskList:Ljava/util/HashMap;

    .line 340
    new-instance v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$1;-><init>(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 376
    new-instance v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$2;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$2;-><init>(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtBinder:Landroid/bluetooth/IBluetoothAvrcpCt$Stub;

    .line 430
    new-instance v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;-><init>(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtPlayerManageBinder:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;

    .line 993
    new-instance v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;-><init>(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mCBMActionListener:Landroid/cbm/CBManager$OnActionListener;

    return-void
.end method

.method private BluetoothAvrcpCtDisable()V
    .locals 4

    const-string v0, "BluetoothAvrcpCtDisable()"

    .line 706
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 707
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_deactivateNative(B)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const-string v1, "BluetoothAvrcpCtService_deactivateNative() failed"

    .line 708
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    const/16 v1, 0xe

    .line 709
    invoke-direct {p0, v1, v2, v0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->notifyProfileState(ILjava/lang/String;CC)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    .line 712
    invoke-direct {p0, v1, v2, v0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->notifyProfileState(ILjava/lang/String;CC)V

    .line 715
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mListener:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;

    if-eqz v0, :cond_1

    .line 716
    iput-boolean v3, v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;->mStopListen:Z

    .line 717
    invoke-direct {p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->wakeupListenerNative()V

    .line 719
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mListener:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mListener colose error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    .line 723
    :goto_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->disableNative()V

    goto :goto_2

    :cond_1
    const-string v0, "mListener == null"

    .line 726
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private BluetoothAvrcpCtEnable()Z
    .locals 6

    const-string v0, "BluetoothAvrcpCtEnable()"

    .line 681
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    .line 683
    new-instance v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;-><init>(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$1;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mListener:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;

    .line 684
    invoke-direct {p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->enableNative()Z

    move-result v0

    const/16 v2, 0xe

    const/16 v3, 0xd

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v4, :cond_1

    .line 685
    invoke-virtual {p0, v5}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_activateNative(B)Z

    move-result v0

    if-eq v0, v4, :cond_0

    const-string v0, "BluetoothAvrcpCtService_activateNative() failed"

    .line 686
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    .line 687
    iput-object v1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mListener:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;

    .line 688
    sput v3, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    .line 689
    invoke-direct {p0, v2, v1, v5, v5}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->notifyProfileState(ILjava/lang/String;CC)V

    return v5

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mListener:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;

    iput-boolean v5, v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;->mStopListen:Z

    .line 694
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mListener:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;->start()V

    goto :goto_0

    :cond_1
    const-string v0, "enableNative() failed"

    .line 697
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    .line 698
    iput-object v1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mListener:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;

    .line 699
    sput v3, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    .line 700
    invoke-direct {p0, v2, v1, v5, v5}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->notifyProfileState(ILjava/lang/String;CC)V

    move v4, v5

    :goto_0
    return v4
.end method

.method public static DecodeUTF8Plus(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "US-ASCII"

    .line 1712
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 1717
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 1718
    :goto_0
    array-length v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v3, v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    .line 1720
    :try_start_1
    aget-byte v3, v1, v3

    int-to-char v3, v3

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/lit8 v6, v4, 0x1

    .line 1721
    aget-byte v4, v1, v4

    int-to-char v4, v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v4

    int-to-char v3, v3

    .line 1726
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v6

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1728
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    return-object p0

    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    goto :goto_3

    .line 1735
    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object p0, v1

    :goto_3
    return-object p0

    :catch_1
    move-exception v0

    .line 1738
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Z)Z
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->listenIndicationNative(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTaskTimeout:I

    return p0
.end method

.method static synthetic access$1002(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTaskTimeout:I

    return p1
.end method

.method static synthetic access$1012(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;I)I
    .locals 1

    .line 72
    iget v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTaskTimeout:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTaskTimeout:I

    return v0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->audioManage(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->regResume(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)I
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->notifyResume()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->notifyRevoke()V

    return-void
.end method

.method static synthetic access$800(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)Landroid/bluetooth/IBluetoothAvrcpCt$Stub;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtBinder:Landroid/bluetooth/IBluetoothAvrcpCt$Stub;

    return-object p0
.end method

.method static synthetic access$900(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->stopTask(I)V

    return-void
.end method

.method private audioManage(II)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1075
    sget-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mCBM:Landroid/cbm/CBManager;

    const/4 v1, -0x1

    if-eqz v0, :cond_11

    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAudioState:I

    if-ne p1, v0, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_d

    .line 1081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .line 1087
    sget-object v3, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mCBM:Landroid/cbm/CBManager;

    invoke-virtual {v3, p1}, Landroid/cbm/CBManager;->query(Landroid/os/Parcel;)I

    move-result v3

    .line 1088
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move v5, v2

    :goto_0
    if-lez v4, :cond_2

    .line 1090
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    move v5, v2

    goto :goto_2

    .line 1111
    :pswitch_1
    iget-object v5, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1112
    :try_start_0
    iget-boolean v6, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mIsForeground:Z

    if-eqz v6, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    const-string v6, "WARN:No permission, other source playing"

    .line 1115
    invoke-direct {p0, v6}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    move v6, v0

    .line 1118
    :goto_1
    monitor-exit v5

    move v5, v6

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_2
    const-string v5, "WARN:No permission, high priority source playing"

    .line 1094
    invoke-direct {p0, v5}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    move v5, v0

    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    .line 1131
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v1

    :cond_3
    if-ne p2, v2, :cond_6

    .line 1138
    :try_start_1
    sget-object v3, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mCBM:Landroid/cbm/CBManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2, p1}, Landroid/cbm/CBManager;->request(IILandroid/os/Parcel;)I

    move-result v3

    .line 1139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audioManage:request res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    if-eq v3, v1, :cond_5

    const/4 v1, -0x2

    if-ne v3, v1, :cond_4

    const-string v1, "WARN:CBManager no need request again!"

    .line 1144
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    if-nez v4, :cond_8

    const-string v1, "WARN:CBManager reply REQ_FORBID, may be can not play!"

    .line 1146
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    goto :goto_3

    .line 1142
    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "CBM run exception!!!"

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_1
    move-exception p2

    goto :goto_6

    :cond_6
    if-nez p2, :cond_7

    move v4, v2

    goto :goto_3

    :cond_7
    move v4, v0

    .line 1152
    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v4, v2, :cond_9

    .line 1154
    :try_start_2
    invoke-virtual {p0, v2, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_setAudioNative(IZ)Z

    .line 1155
    sput v2, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAudioState:I

    .line 1157
    :cond_9
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1159
    :try_start_3
    sget v1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAudioState:I

    if-ne v1, v2, :cond_c

    if-nez p2, :cond_c

    .line 1161
    sget p2, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    const/16 v1, 0x13

    if-eq p2, v1, :cond_b

    sget p2, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mPlaybackStatus:I

    if-eq p2, v2, :cond_a

    sget p2, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    if-ne p2, v2, :cond_a

    goto :goto_4

    .line 1167
    :cond_a
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->scheduleTask(I)V

    goto :goto_5

    .line 1164
    :cond_b
    :goto_4
    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgAddr:Ljava/lang/String;

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgAddr:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->play(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1172
    :cond_c
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    move v0, v3

    goto :goto_7

    :catchall_2
    move-exception p2

    .line 1157
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1172
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p2

    :cond_d
    if-nez p1, :cond_10

    .line 1175
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1176
    :try_start_6
    invoke-virtual {p0, v0, v2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_setAudioNative(IZ)Z

    .line 1177
    sput v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAudioState:I

    .line 1178
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-ne v2, p2, :cond_e

    .line 1181
    sget-object p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mCBM:Landroid/cbm/CBManager;

    invoke-virtual {p1}, Landroid/cbm/CBManager;->release()V

    goto :goto_7

    .line 1183
    :cond_e
    sget p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    const/16 p2, 0xf

    if-ne p1, p2, :cond_10

    .line 1184
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTaskList:Ljava/util/HashMap;

    if-eqz p1, :cond_f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 1186
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->stopTask(I)V

    goto :goto_7

    .line 1187
    :cond_f
    sget p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mPlaybackStatus:I

    if-ne p1, v2, :cond_10

    .line 1189
    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->scheduleTask(I)V

    goto :goto_7

    :catchall_3
    move-exception p2

    .line 1178
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p2

    :cond_10
    :goto_7
    return v0

    :cond_11
    :goto_8
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeObjectNative()V
.end method

.method private native disableNative()V
.end method

.method private native enableNative()Z
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1

    .line 1702
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothAvrcpCtService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private native initializeNativeObjectNative()V
.end method

.method private native listenIndicationNative(Z)Z
.end method

.method private notifyPassThroughCnf(I)V
    .locals 3

    .line 1683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPassThroughCnf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    .line 1685
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1686
    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_AVRCP_CT:Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v2, "android.bluetooth.profilemanager.extra.PROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1687
    sget-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_AVRCP_CT:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v2, "android.bluetooth.profilemanager.extra.ATCPROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.PASSTHROUGH_KEY"

    .line 1688
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.permission.BLUETOOTH"

    .line 1689
    invoke-virtual {p0, v0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private notifyProfileState(ILjava/lang/String;CC)V
    .locals 3

    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyProfileState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    .line 1656
    sput p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    .line 1658
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1659
    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_AVRCP_CT:Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v2, "android.bluetooth.profilemanager.extra.PROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1660
    sget-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_AVRCP_CT:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v2, "android.bluetooth.profilemanager.extra.ATCPROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    .line 1661
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.REMOTE_DEVICE_ADDR"

    .line 1663
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.REMOTE_TG_FEATURE"

    .line 1664
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.REMOTE_TG_VERSION"

    .line 1665
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    :cond_0
    const-string p2, "android.permission.BLUETOOTH"

    .line 1667
    invoke-virtual {p0, v0, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1670
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    const/4 p3, 0x7

    const/4 p4, 0x2

    if-ne p1, v1, :cond_1

    .line 1672
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p1, p3, p4, v1}, Landroid/bluetooth/BluetoothAdapter;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_0

    :cond_1
    if-ne p1, p4, :cond_2

    .line 1675
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 p4, 0x0

    const/4 v0, 0x3

    invoke-virtual {p2, p1, p3, p4, v0}, Landroid/bluetooth/BluetoothAdapter;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    :cond_2
    :goto_0
    return-void
.end method

.method private notifyResume()I
    .locals 3

    .line 1207
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1208
    :try_start_0
    iput-boolean v1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mIsForeground:Z

    .line 1209
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1210
    sget-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mCBM:Landroid/cbm/CBManager;

    if-eqz v0, :cond_0

    .line 1211
    sget-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mCBM:Landroid/cbm/CBManager;

    invoke-virtual {v0}, Landroid/cbm/CBManager;->appResume()I

    move-result v0

    const/4 v1, -0x3

    if-ne v1, v0, :cond_1

    const/16 v1, 0xf

    .line 1212
    sget v2, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    .line 1214
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->scheduleTask(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :catchall_0
    move-exception v1

    .line 1209
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized notifyRevoke()V
    .locals 2

    monitor-enter p0

    .line 1222
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 1223
    :try_start_1
    iput-boolean v1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mIsForeground:Z

    .line 1224
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1225
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 1224
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1

    .line 1698
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothAvrcpCtService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private regResume(Z)V
    .locals 1

    .line 1199
    sget-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mCBM:Landroid/cbm/CBManager;

    if-eqz v0, :cond_0

    .line 1200
    sget-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mCBM:Landroid/cbm/CBManager;

    invoke-virtual {v0, p1}, Landroid/cbm/CBManager;->config(Z)V

    :cond_0
    return-void
.end method

.method private scheduleTask(I)V
    .locals 7

    .line 1264
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 1265
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTimer:Ljava/util/Timer;

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTaskList:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 1268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTaskList:Ljava/util/HashMap;

    .line 1270
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleTask:task_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    .line 1271
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTaskList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    if-nez p1, :cond_2

    .line 1274
    new-instance v2, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$5;

    invoke-direct {v2, p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$5;-><init>(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTask:Ljava/util/TimerTask;

    .line 1296
    iget-object v1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTimer:Ljava/util/Timer;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x1f4

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    .line 1299
    new-instance v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$6;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$6;-><init>(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTask:Ljava/util/TimerTask;

    .line 1316
    iget-object v1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne v0, p1, :cond_4

    .line 1319
    new-instance v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$7;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$7;-><init>(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTask:Ljava/util/TimerTask;

    .line 1332
    iget-object v1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1335
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTaskList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1337
    :cond_5
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->DEBUG:Z

    if-eqz p1, :cond_6

    const-string p1, "BluetoothAvrcpCtService"

    const-string/jumbo v0, "scheduleTask: already start!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method

.method private stopTask(I)V
    .locals 2

    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopTask:task_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    .line 1343
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTaskList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTaskList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimerTask;

    .line 1345
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1346
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTaskList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTaskList:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 1348
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTimer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 1349
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTimer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    const/4 p1, 0x0

    .line 1350
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTimer:Ljava/util/Timer;

    .line 1351
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mTaskList:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method private native wakeupListenerNative()V
.end method


# virtual methods
.method public native BluetoothAvrcpCtService_activateNative(B)Z
.end method

.method public native BluetoothAvrcpCtService_backwardNative(Ljava/lang/String;)Z
.end method

.method public native BluetoothAvrcpCtService_browseConnectNative()Z
.end method

.method public native BluetoothAvrcpCtService_browseDisconnectNative()Z
.end method

.method public native BluetoothAvrcpCtService_connectNative(Ljava/lang/String;)Z
.end method

.method public native BluetoothAvrcpCtService_deactivateNative(B)Z
.end method

.method public native BluetoothAvrcpCtService_disconnectNative()Z
.end method

.method public native BluetoothAvrcpCtService_fastForwardNative(Ljava/lang/String;)Z
.end method

.method public native BluetoothAvrcpCtService_forwardNative(Ljava/lang/String;)Z
.end method

.method public native BluetoothAvrcpCtService_getCapabilitiesNative(B)Z
.end method

.method public native BluetoothAvrcpCtService_getElementAttributesNative(JB[I)Z
.end method

.method public native BluetoothAvrcpCtService_getItemAttributesNative(BJCB[I)Z
.end method

.method public native BluetoothAvrcpCtService_getPlayStatusNative()Z
.end method

.method public native BluetoothAvrcpCtService_informDisplaybaleCharsetNative(BC)Z
.end method

.method public native BluetoothAvrcpCtService_pauseNative(Ljava/lang/String;)Z
.end method

.method public native BluetoothAvrcpCtService_playNative(Ljava/lang/String;)Z
.end method

.method public native BluetoothAvrcpCtService_regNotificationNative(BI)Z
.end method

.method public native BluetoothAvrcpCtService_rewindNative(Ljava/lang/String;)Z
.end method

.method public native BluetoothAvrcpCtService_setAudioNative(IZ)Z
.end method

.method public native BluetoothAvrcpCtService_stopNative(Ljava/lang/String;)Z
.end method

.method public backward(Ljava/lang/String;)Z
    .locals 2

    .line 814
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_backwardNative(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backward failure ,return value is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "AVRCP is not connected yet"

    .line 821
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public browseConnectTarget()Z
    .locals 1

    const-string v0, "browseConnectTarget"

    .line 742
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_browseConnectNative()Z

    const/4 v0, 0x0

    return v0
.end method

.method public browseDisconnectTarget()Z
    .locals 1

    const-string v0, "browseDisconnectTarget"

    .line 760
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_browseDisconnectNative()Z

    const/4 v0, 0x0

    return v0
.end method

.method public connectTarget(Ljava/lang/String;)Z
    .locals 2

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectTarget"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 734
    sput v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    .line 735
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_connectNative(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectTarget failure ,return value is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method public disconnectTarget()V
    .locals 1

    const-string v0, "disconnectTarget"

    .line 754
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 755
    sput v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    .line 756
    invoke-virtual {p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_disconnectNative()Z

    return-void
.end method

.method public fastForward(Ljava/lang/String;)Z
    .locals 2

    .line 842
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 845
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_fastForwardNative(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fastForward failure, return value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "AVRCP is not connected yet"

    .line 849
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public forward(Ljava/lang/String;)Z
    .locals 2

    .line 800
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_forwardNative(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forward failure ,return value is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "AVRCP is not connected yet"

    .line 807
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public getCapabilities(B)Z
    .locals 2

    .line 937
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 938
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_getCapabilitiesNative(B)Z

    move-result p1

    if-nez p1, :cond_1

    const-string v0, "getCapabilities fail"

    .line 940
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "AVRCP is not connected yet"

    .line 942
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public getCapabilityCnf(BBCBBB[B)V
    .locals 0

    .line 1635
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getCapabilityEventsCnf: result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "error_code:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    .line 1636
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_capability_cnf_intent:Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.RESULT"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 1637
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_capability_cnf_intent:Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ERROR_CODE"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1638
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_capability_cnf_intent:Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.CAPABILITY_ID"

    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    const/4 p1, 0x3

    if-ne p5, p1, :cond_1

    const/16 p1, 0x1000

    const/4 p2, 0x0

    const-string p4, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.COUNT"

    if-ne p3, p1, :cond_0

    if-lez p6, :cond_0

    .line 1641
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_capability_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p1, p4, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    :goto_0
    if-ge p2, p6, :cond_1

    .line 1643
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_capability_cnf_intent:Landroid/content/Intent;

    sget-object p3, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->EVENTS_SUPPORTED:[Ljava/lang/String;

    aget-object p3, p3, p2

    aget-byte p4, p7, p2

    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    add-int/lit8 p2, p2, 0x1

    int-to-byte p2, p2

    goto :goto_0

    .line 1646
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_capability_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1650
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_capability_cnf_intent:Landroid/content/Intent;

    const-string p2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public getElementAttributes(JB[I)Z
    .locals 2

    .line 871
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 872
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_getElementAttributesNative(JB[I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 874
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getElementAttributes failure, return value is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "AVRCP is not connected yet"

    .line 876
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public getElementAttributesCnf(BBCBB[I[C[Ljava/lang/String;)V
    .locals 4

    const-string p1, "getElementAttributesCnf"

    .line 1465
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    const-string p1, "android.permission.BLUETOOTH"

    const/4 p2, 0x0

    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.COUNT"

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ERROR_CODE"

    const-string v2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.RESULT"

    const/16 v3, 0x1000

    if-ne p3, v3, :cond_3

    if-lez p5, :cond_2

    .line 1469
    iget-object v3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_element_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {v3, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 1470
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_element_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p3, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1471
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_element_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p3, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    const/4 p3, 0x0

    :goto_0
    if-ge p2, p5, :cond_1

    const/16 p4, 0xa

    if-ge p2, p4, :cond_1

    .line 1473
    iget-object p4, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_element_attributes_cnf_intent:Landroid/content/Intent;

    sget-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->ATTRIBUTE_ID:[Ljava/lang/String;

    aget-object v0, v0, p2

    aget v1, p6, p2

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1474
    aget-char p4, p7, p2

    const/16 v0, 0x6a

    if-ne p4, v0, :cond_0

    .line 1476
    aget-object p3, p8, p2

    invoke-static {p3}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->DecodeUTF8Plus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1477
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getElementAttributesCnf, attribute_value"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    .line 1479
    :cond_0
    iget-object p4, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_element_attributes_cnf_intent:Landroid/content/Intent;

    sget-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->VALUE:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {p4, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 p2, p2, 0x1

    int-to-byte p2, p2

    goto :goto_0

    .line 1481
    :cond_1
    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_element_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 1483
    :cond_2
    iget-object p5, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_element_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p5, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 1484
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_element_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p3, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1485
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_element_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1486
    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_element_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 1489
    :cond_3
    iget-object p5, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_element_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p5, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 1490
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_element_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p3, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1491
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_element_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1492
    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_element_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public getItemAttributes(BJCB[I)Z
    .locals 3

    .line 910
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    const/16 v1, 0x11

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtBrowseState:I

    if-ne v0, v1, :cond_0

    .line 912
    invoke-virtual/range {p0 .. p6}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_getItemAttributesNative(BJCB[I)Z

    move-result p1

    goto :goto_1

    .line 913
    :cond_0
    sget p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    if-eq p1, v2, :cond_1

    const-string p1, "AVRCP is not connected yet"

    .line 914
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    .line 915
    :cond_1
    iget p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtBrowseState:I

    if-eq p1, v1, :cond_2

    const-string p1, "AVRCP Browse is not connected yet"

    .line 916
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public getItemAttributesCnf(BBCBBB[I[C[Ljava/lang/String;)V
    .locals 3

    const-string p1, "getItemAttributesCnf"

    .line 1499
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    const-string p1, "android.permission.BLUETOOTH"

    const/4 p2, 0x0

    const-string p5, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.COUNT"

    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ERROR_CODE"

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.RESULT"

    const/16 v2, 0x1000

    if-ne p3, v2, :cond_3

    if-lez p6, :cond_2

    .line 1503
    iget-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_item_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {v2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 1504
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_item_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1505
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_item_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p3, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    const/4 p3, 0x0

    :goto_0
    if-ge p2, p6, :cond_1

    .line 1507
    iget-object p4, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_item_attributes_cnf_intent:Landroid/content/Intent;

    sget-object p5, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->ATTRIBUTE_ID:[Ljava/lang/String;

    aget-object p5, p5, p2

    aget v0, p7, p2

    invoke-virtual {p4, p5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1508
    aget-char p4, p8, p2

    const/16 p5, 0x6a

    if-ne p4, p5, :cond_0

    .line 1510
    aget-object p3, p9, p2

    invoke-static {p3}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->DecodeUTF8Plus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1512
    :cond_0
    iget-object p4, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_item_attributes_cnf_intent:Landroid/content/Intent;

    sget-object p5, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->VALUE:[Ljava/lang/String;

    aget-object p5, p5, p2

    invoke-virtual {p4, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 p2, p2, 0x1

    int-to-byte p2, p2

    goto :goto_0

    .line 1514
    :cond_1
    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_item_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 1516
    :cond_2
    iget-object p6, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_item_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p6, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 1517
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_item_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1518
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_item_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p3, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1519
    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_item_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 1522
    :cond_3
    iget-object p6, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_item_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p6, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 1523
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_item_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1524
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_item_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p3, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1525
    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_item_attributes_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public getPlayerStatus()Z
    .locals 2

    .line 884
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 885
    invoke-virtual {p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_getPlayStatusNative()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "getPlayerStatus fail"

    .line 887
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "AVRCP is not connected yet"

    .line 889
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public getPlayerStatusCnf(BBCBIIB)V
    .locals 5

    .line 1531
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPlayerStatusCnf:result= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    .line 1532
    sput p7, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mPlaybackStatus:I

    const-string p1, "android.permission.BLUETOOTH"

    const-string p2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.PLAY_STATUS"

    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.SONG_POSITION"

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.SONG_LENGTH"

    const-string v2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ERROR_CODE"

    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.RESULT"

    const/16 v4, 0x1000

    if-ne p3, v4, :cond_0

    .line 1534
    iget-object v4, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_player_status_cnf_intent:Landroid/content/Intent;

    invoke-virtual {v4, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 1535
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_player_status_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p3, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1536
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_player_status_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p3, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1537
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_player_status_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p3, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1538
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_player_status_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p3, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1539
    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_player_status_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 1541
    :cond_0
    iget-object p5, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_player_status_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p5, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 1542
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_player_status_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p3, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1543
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_player_status_cnf_intent:Landroid/content/Intent;

    const/4 p4, 0x0

    invoke-virtual {p3, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1544
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_player_status_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1545
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_player_status_cnf_intent:Landroid/content/Intent;

    const/4 p4, -0x1

    invoke-virtual {p3, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1546
    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_get_player_status_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public informDisplayableCharset(BC)Z
    .locals 2

    .line 924
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 925
    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_informDisplaybaleCharsetNative(BC)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p2, "registerNotificationReq fail"

    .line 927
    invoke-direct {p0, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "AVRCP is not connected yet"

    .line 929
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public informDisplayableCharsetCnf(BBCB)V
    .locals 0

    .line 1628
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "informDisplayableCharsetCnf, result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "error_code:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    .line 1629
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_inform_displayable_charset_cnf_intent:Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.RESULT"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 1630
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_inform_displayable_charset_cnf_intent:Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ERROR_CODE"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1631
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_inform_displayable_charset_cnf_intent:Landroid/content/Intent;

    const-string p2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method localCreateService()V
    .locals 2

    .line 663
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    .line 664
    invoke-direct {p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->initializeNativeObjectNative()V

    const/16 v0, 0xa

    .line 665
    sput v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    .line 666
    invoke-direct {p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "BluetoothAvrcpCtEnable() == true"

    .line 667
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "BluetoothAvrcpCtEnable() == false"

    .line 669
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivateCnf(BC)V
    .locals 2

    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivateCnf index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",result:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    const/16 p1, 0x1000

    if-ne p1, p2, :cond_0

    const/16 p1, 0xb

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 1365
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->notifyProfileState(ILjava/lang/String;CC)V

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 605
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter onBind() action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    .line 607
    const-class v0, Landroid/bluetooth/IBluetoothAvrcpCt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Enter onBind() return mAvrcpCtBinder "

    .line 608
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    .line 609
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtBinder:Landroid/bluetooth/IBluetoothAvrcpCt$Stub;

    return-object p1

    :cond_0
    const-string p1, "Enter onBind() return mAvrcpCtPlayerManageBinder "

    .line 611
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    .line 612
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtPlayerManageBinder:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;

    return-object p1
.end method

.method public onBrowseConnectCnf(BBCC)V
    .locals 0

    .line 1444
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onBrowseConnectCnf:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    const/16 p1, 0x1000

    if-ne p3, p1, :cond_0

    const/16 p1, 0x11

    .line 1446
    iput p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtBrowseState:I

    .line 1447
    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_browse_state_changed_intent:Landroid/content/Intent;

    const-string p3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.BROWSE_STATE"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1448
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_browse_state_changed_intent:Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.BWS_MTU"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 1449
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_browse_state_changed_intent:Landroid/content/Intent;

    const-string p2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBrowseDisconnectCnf(B)V
    .locals 2

    const-string p1, "onBrowseDisconnectCnf"

    .line 1455
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    const/16 p1, 0x12

    .line 1456
    iput p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtBrowseState:I

    .line 1457
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_browse_state_changed_intent:Landroid/content/Intent;

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.BROWSE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1458
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_browse_state_changed_intent:Landroid/content/Intent;

    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.BWS_MTU"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 1459
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_browse_state_changed_intent:Landroid/content/Intent;

    const-string v0, "android.permission.BLUETOOTH"

    invoke-virtual {p0, p1, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onConnectCnf(CLjava/lang/String;CC)V
    .locals 2

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectCnf result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    const/16 v0, 0x1000

    if-ne v0, p1, :cond_0

    .line 1388
    iput-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgAddr:Ljava/lang/String;

    .line 1389
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1390
    iput-char p4, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgVersion:C

    const/4 p1, 0x1

    .line 1391
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->notifyProfileState(ILjava/lang/String;CC)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1393
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgAddr:Ljava/lang/String;

    .line 1394
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 p1, 0x0

    .line 1395
    iput-char p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgVersion:C

    const/4 p1, 0x2

    .line 1396
    sput p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    :goto_0
    return-void
.end method

.method public onConnectInd(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1379
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onConnectInd:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    .line 1380
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgAddr:Ljava/lang/String;

    .line 1381
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "onCreate()"

    .line 618
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    .line 620
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v0, 0x0

    .line 622
    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgDevice:Landroid/bluetooth/BluetoothDevice;

    .line 624
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 625
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.profilemanager.action.DISABLE_PROFILES"

    .line 626
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.ACTION_BTMUSIC_INTERACTIVE"

    .line 627
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 628
    iget-object v1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "call localCreateService"

    .line 630
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->localCreateService()V

    .line 634
    sget-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mCBM:Landroid/cbm/CBManager;

    if-nez v0, :cond_0

    .line 635
    new-instance v0, Landroid/cbm/CBManager;

    invoke-direct {v0}, Landroid/cbm/CBManager;-><init>()V

    sput-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mCBM:Landroid/cbm/CBManager;

    .line 636
    sget-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mCBM:Landroid/cbm/CBManager;

    if-eqz v0, :cond_0

    .line 637
    sget-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mCBM:Landroid/cbm/CBManager;

    iget-object v1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mCBMActionListener:Landroid/cbm/CBManager$OnActionListener;

    invoke-virtual {v0, v1}, Landroid/cbm/CBManager;->setOnActionListener(Landroid/cbm/CBManager$OnActionListener;)V

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->service_create_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onDeactivateCnf(BC)V
    .locals 2

    .line 1370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeactivateCnf index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",result:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    const/16 p1, 0x1000

    if-ne p1, p2, :cond_0

    const/16 p1, 0xd

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 1372
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->notifyProfileState(ILjava/lang/String;CC)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "onDestroy()"

    .line 646
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    .line 648
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 649
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 652
    sget-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mCBM:Landroid/cbm/CBManager;

    if-eqz v0, :cond_0

    .line 653
    sget-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mCBM:Landroid/cbm/CBManager;

    invoke-virtual {v0}, Landroid/cbm/CBManager;->release()V

    const/4 v0, 0x0

    .line 654
    sput-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mCBM:Landroid/cbm/CBManager;

    const/4 v0, 0x0

    .line 655
    sput v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAudioState:I

    .line 658
    :cond_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtDisable()V

    .line 659
    invoke-direct {p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->cleanupNativeObjectNative()V

    return-void
.end method

.method public onDisconnectCnf(C)V
    .locals 2

    .line 1413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnectCnf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    const/16 v0, 0x1000

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1415
    iput-char p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgVersion:C

    .line 1416
    sput p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->trackChangedEventStatus:I

    .line 1417
    sput p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->posChangedEventStatus:I

    .line 1418
    sput p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mPlaybackStatus:I

    const/4 v0, 0x2

    .line 1419
    iget-object v1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgAddr:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->notifyProfileState(ILjava/lang/String;CC)V

    const/4 p1, 0x0

    .line 1420
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1421
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgAddr:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onDisconnectInd()V
    .locals 3

    const-string v0, "disconnectInd"

    .line 1401
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1403
    iput-char v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgVersion:C

    .line 1404
    sput v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->trackChangedEventStatus:I

    .line 1405
    sput v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->posChangedEventStatus:I

    .line 1406
    sput v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mPlaybackStatus:I

    .line 1407
    iget-object v1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgAddr:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1, v0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->notifyProfileState(ILjava/lang/String;CC)V

    const/4 v0, 0x0

    .line 1408
    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1409
    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgAddr:Ljava/lang/String;

    return-void
.end method

.method public onpassThroughKeyCnf(IB)V
    .locals 2

    const-string v0, "onpassThroughKeyCnf"

    .line 1426
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    const/16 v0, 0x45

    if-eq p1, v0, :cond_1

    const/16 v0, 0x46

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 1433
    sput v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mPlaybackStatus:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 1429
    sput v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mPlaybackStatus:I

    .line 1437
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_passthrough_command_cnf_intent:Landroid/content/Intent;

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.KEY_VALUE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1438
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_passthrough_command_cnf_intent:Landroid/content/Intent;

    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.IS_PRESS"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1439
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_passthrough_command_cnf_intent:Landroid/content/Intent;

    const-string p2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public pause(Ljava/lang/String;)Z
    .locals 2

    .line 772
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_pauseNative(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pause failure ,return value is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "AVRCP is not connected yet"

    .line 779
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public play(Ljava/lang/String;)Z
    .locals 2

    .line 786
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_playNative(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play failure ,return value is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "AVRCP is not connected yet"

    .line 793
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public regNotiErrorCnf(BBCBB)V
    .locals 0

    .line 1620
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "regNotiErrorCnf, result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "error_code:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    .line 1621
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_noification_error_cnf_intent:Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.RESULT"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 1622
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_noification_error_cnf_intent:Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ERROR_CODE"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1623
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_noification_error_cnf_intent:Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENT_ID"

    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1624
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_noification_error_cnf_intent:Landroid/content/Intent;

    const-string p2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public regNotiPlaybackStatusChangedCnf(BBCBBB)V
    .locals 5

    const-string p1, "regNotiPlaybackStatusChangedCnf"

    .line 1552
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/16 p2, 0x1000

    if-ne p3, p2, :cond_0

    const/4 v0, 0x1

    if-ne p6, v0, :cond_0

    .line 1554
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->playbackChangedEventStatus:I

    goto :goto_0

    :cond_0
    if-ne p3, p2, :cond_1

    if-nez p6, :cond_1

    const/4 v0, 0x2

    .line 1556
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->playbackChangedEventStatus:I

    .line 1557
    sput p5, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mPlaybackStatus:I

    goto :goto_0

    :cond_1
    if-eq p3, p2, :cond_2

    .line 1559
    iput p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->playbackChangedEventStatus:I

    :cond_2
    :goto_0
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.IS_INTERIM"

    const-string v2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.PLAY_STATUS"

    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ERROR_CODE"

    const-string v4, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.RESULT"

    if-ne p3, p2, :cond_3

    .line 1563
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_playback_changed_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 1564
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_playback_changed_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1565
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_playback_changed_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1566
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_playback_changed_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p1, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1567
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_playback_changed_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 1569
    :cond_3
    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_playback_changed_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 1570
    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_playback_changed_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1571
    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_playback_changed_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1572
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_playback_changed_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p1, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1573
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_playback_changed_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public regNotiPosChangedCnf(BBCBIB)V
    .locals 5

    const-string p1, "regNotiPosChangedCnf"

    .line 1578
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/16 p2, 0x1000

    if-ne p3, p2, :cond_0

    const/4 v0, 0x1

    if-ne p6, v0, :cond_0

    .line 1580
    sput v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->posChangedEventStatus:I

    goto :goto_0

    :cond_0
    if-ne p3, p2, :cond_1

    if-nez p6, :cond_1

    const/4 v0, 0x2

    .line 1582
    sput v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->posChangedEventStatus:I

    goto :goto_0

    :cond_1
    if-eq p3, p2, :cond_2

    .line 1584
    sput p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->posChangedEventStatus:I

    :cond_2
    :goto_0
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.IS_INTERIM"

    const-string v2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.SONG_POSITION"

    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ERROR_CODE"

    const-string v4, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.RESULT"

    if-ne p3, p2, :cond_3

    .line 1588
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_pos_changed_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 1589
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_pos_changed_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1590
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_pos_changed_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1591
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_pos_changed_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p1, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1592
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_pos_changed_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 1594
    :cond_3
    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_pos_changed_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 1595
    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_pos_changed_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1596
    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_pos_changed_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1597
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_pos_changed_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p1, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1598
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_pos_changed_cnf_intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public regNotiTrackChangedCnf(BBCBBJ)V
    .locals 0

    const-string p1, "regNotiTrackChangedCnf"

    .line 1603
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->printLog(Ljava/lang/String;)V

    const/16 p1, 0x1000

    if-ne p3, p1, :cond_0

    const/4 p2, 0x1

    if-ne p5, p2, :cond_0

    .line 1605
    sput p2, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->trackChangedEventStatus:I

    goto :goto_0

    :cond_0
    if-ne p3, p1, :cond_1

    if-nez p5, :cond_1

    const/4 p1, 0x2

    .line 1607
    sput p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->trackChangedEventStatus:I

    goto :goto_0

    :cond_1
    if-eq p3, p1, :cond_2

    const/4 p1, 0x0

    .line 1609
    sput p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->trackChangedEventStatus:I

    .line 1612
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_track_changed_cnf_intent:Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.RESULT"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 1613
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_track_changed_cnf_intent:Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ERROR_CODE"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1614
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_track_changed_cnf_intent:Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.IS_INTERIM"

    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1615
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_track_changed_cnf_intent:Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.IDENTIFIER"

    invoke-virtual {p1, p2, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1616
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_reg_notification_track_changed_cnf_intent:Landroid/content/Intent;

    const-string p2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public registerNotificationReq(BI)Z
    .locals 2

    .line 897
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 898
    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_regNotificationNative(BI)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p2, "registerNotificationReq fail"

    .line 900
    invoke-direct {p0, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "AVRCP is not connected yet"

    .line 902
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public rewind(Ljava/lang/String;)Z
    .locals 2

    .line 856
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 859
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_rewindNative(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fastForward failure, return value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "AVRCP is not connected yet"

    .line 863
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public stop(Ljava/lang/String;)Z
    .locals 2

    .line 828
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 831
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->BluetoothAvrcpCtService_stopNative(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stop failure ,return value is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "AVRCP is not connected yet"

    .line 835
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->errorLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method
