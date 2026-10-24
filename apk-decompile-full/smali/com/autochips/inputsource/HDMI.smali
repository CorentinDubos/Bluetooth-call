.class public Lcom/autochips/inputsource/HDMI;
.super Lcom/autochips/inputsource/InputSourceClient;
.source "HDMI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/inputsource/HDMI$EventHandler;,
        Lcom/autochips/inputsource/HDMI$OnMHLPhoneSignalListener;
    }
.end annotation


# static fields
.field public static final ACTION_BTHID_CONNECT_STATE:Ljava/lang/String; = "autochips.intent.action.CONNECT_STATE"

.field public static final ACTION_BTHID_RESOLUTION:Ljava/lang/String; = "autochips.intent.action.RESOLUTION"

.field public static final ACTION_MHLHID_CONTROL_A2DP:Ljava/lang/String; = "autochips.intent.action.CONTROL_A2DP"

.field public static final ACTION_MHLHID_CONTROL_DATA:Ljava/lang/String; = "autochips.intent.action.CONTROL_DATA"

.field public static final ACTION_MHLHID_GET_CONNECT_STATE:Ljava/lang/String; = "autochips.intent.action.GET_CONNECT_STATE"

.field public static final ACTION_MHLHID_GET_RESOLUTION:Ljava/lang/String; = "autochips.intent.action.GET_RESOLUTION"

.field public static final ACTION_MHLHID_MOUSE_DATA:Ljava/lang/String; = "autochips.intent.action.MOUSE_DATA"

.field public static final ACTION_MHLHID_NOTIFY_RESOLUTION:Ljava/lang/String; = "autochips.intent.action.NOTIFY_RESOLUTION"

.field public static final CALIBRATION_POINT_NUM:I = 0x4

.field public static final DEVICE_HDMI:I = 0x1

.field public static final DEVICE_MHL:I = 0x2

.field public static final DEVICE_NULL:I = 0x0

.field public static final DEVICE_TYPE_CHANGE:I = 0x3e9

.field public static final HID_CMD:Ljava/lang/String; = "HIDCmd"

.field public static final HID_CONNECT_STATE:Ljava/lang/String; = "HidConnectState"

.field public static final HID_CONTROL_CMD_BACK:I = 0x4

.field public static final HID_CONTROL_CMD_HOME:I = 0x1

.field public static final HID_CONTROL_CMD_MENU:I = 0x10

.field public static final HID_CONTROL_CMD_NEXT:I = 0x80

.field public static final HID_CONTROL_CMD_PLAY_PAUSE:I = 0x20

.field public static final HID_CONTROL_CMD_PREVIOUS:I = 0x40

.field public static final HID_CONTROL_CMD_STOP:I = 0x100

.field public static final HID_CONTROL_CMD_VOLUME_DOWN:I = 0x400

.field public static final HID_CONTROL_CMD_VOLUME_UP:I = 0x200

.field public static final IS_CMD_ID_SEND_RCP:I = 0x1

.field public static final MHL_BT_HID_MSG_BASE:I = 0x3e8

.field public static final MOUSE_BTN_DOWN:Ljava/lang/String; = "ButtonDown"

.field public static final MOUSE_DATA_X:Ljava/lang/String; = "CoordinateX"

.field public static final MOUSE_DATA_Y:Ljava/lang/String; = "CoordinateY"

.field private static final ORGIN_POINT_IDX:I = 0x4

.field public static final PHONE_ORIENTATION_CHANGE:I = 0x3ea

.field public static final PHONE_RESOLUTION:Ljava/lang/String; = "PhoneResolution"

.field public static final RCP_KEY_ANGLE:I = 0x50

.field public static final RCP_KEY_BACKWARD:I = 0x4c

.field public static final RCP_KEY_CHANNEL_DOWN:I = 0x31

.field public static final RCP_KEY_CHANNEL_UP:I = 0x30

.field public static final RCP_KEY_CLEAR:I = 0x2c

.field public static final RCP_KEY_CONTENTS_MENU:I = 0xb

.field public static final RCP_KEY_DOT:I = 0x2a

.field public static final RCP_KEY_DOWN:I = 0x2

.field public static final RCP_KEY_EJECT:I = 0x4a

.field public static final RCP_KEY_ENTER:I = 0x2b

.field public static final RCP_KEY_EXIT:I = 0xd

.field public static final RCP_KEY_F1:I = 0x71

.field public static final RCP_KEY_F2:I = 0x72

.field public static final RCP_KEY_F3:I = 0x73

.field public static final RCP_KEY_F4:I = 0x74

.field public static final RCP_KEY_F5:I = 0x75

.field public static final RCP_KEY_FAST_FORWARD:I = 0x49

.field public static final RCP_KEY_FAVORITE_MENU:I = 0xc

.field public static final RCP_KEY_FORWARD:I = 0x4b

.field public static final RCP_KEY_HELP:I = 0x36

.field public static final RCP_KEY_INPUT_SELECT:I = 0x34

.field public static final RCP_KEY_INVAILD:I = 0xff

.field public static final RCP_KEY_LEFT:I = 0x3

.field public static final RCP_KEY_LEFT_DOWN:I = 0x8

.field public static final RCP_KEY_LEFT_UP:I = 0x7

.field public static final RCP_KEY_MUTE:I = 0x43

.field public static final RCP_KEY_MUTE_FUNCTION:I = 0x65

.field public static final RCP_KEY_NUMERIC0:I = 0x20

.field public static final RCP_KEY_NUMERIC1:I = 0x21

.field public static final RCP_KEY_NUMERIC2:I = 0x22

.field public static final RCP_KEY_NUMERIC3:I = 0x23

.field public static final RCP_KEY_NUMERIC4:I = 0x24

.field public static final RCP_KEY_NUMERIC5:I = 0x25

.field public static final RCP_KEY_NUMERIC6:I = 0x26

.field public static final RCP_KEY_NUMERIC7:I = 0x27

.field public static final RCP_KEY_NUMERIC8:I = 0x28

.field public static final RCP_KEY_NUMERIC9:I = 0x29

.field public static final RCP_KEY_PAGE_DOWN:I = 0x38

.field public static final RCP_KEY_PAGE_UP:I = 0x37

.field public static final RCP_KEY_PAUSE:I = 0x46

.field public static final RCP_KEY_PAUSE_PLAY_FUNCTION:I = 0x61

.field public static final RCP_KEY_PAUSE_RECORD_FUNCITON:I = 0x63

.field public static final RCP_KEY_PLAY:I = 0x44

.field public static final RCP_KEY_PLAY_FUNCTION:I = 0x60

.field public static final RCP_KEY_PREVIOUS_CHANNEL:I = 0x32

.field public static final RCP_KEY_RECORD:I = 0x47

.field public static final RCP_KEY_RECORD_FUNCTION:I = 0x62

.field public static final RCP_KEY_RESTORE_VOLUME_FUNCTION:I = 0x66

.field public static final RCP_KEY_REWIND:I = 0x48

.field public static final RCP_KEY_RIGHT:I = 0x4

.field public static final RCP_KEY_RIGHT_DOWN:I = 0x6

.field public static final RCP_KEY_RIGHT_UP:I = 0x5

.field public static final RCP_KEY_ROOT_MENU:I = 0x9

.field public static final RCP_KEY_SELECT:I = 0x0

.field public static final RCP_KEY_SELECT_MEDIA_FUNCTION:I = 0x68

.field public static final RCP_KEY_SETUP_MENU:I = 0xa

.field public static final RCP_KEY_SHOW_INFORMATION:I = 0x35

.field public static final RCP_KEY_SOUND_SELECT:I = 0x33

.field public static final RCP_KEY_STOP:I = 0x45

.field public static final RCP_KEY_STOP_FUNCTION:I = 0x64

.field public static final RCP_KEY_SUBPICTURE:I = 0x51

.field public static final RCP_KEY_TUNE_FUNCTION:I = 0x67

.field public static final RCP_KEY_UP:I = 0x1

.field public static final RCP_KEY_VENDOR_SPECIFIC:I = 0x7e

.field public static final RCP_KEY_VOLUME_DOWN:I = 0x42

.field public static final RCP_KEY_VOLUME_UP:I = 0x41

.field public static final RESOLUTION_UNKNOWN:I = 0x0

.field public static final SIGNAL_CHANGE:I = 0x2

.field public static final SIGNAL_LOST:I = 0x1

.field public static final SIGNAL_READY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HDMI.JAVA"

.field private static final calibratPoint:[Landroid/graphics/Point;


# instance fields
.field private carkitPoint:[I

.field mBtHidListener:Landroid/content/BroadcastReceiver;

.field private mCalibrateNum:I

.field mHDMIContext:Landroid/content/Context;

.field private mHDMIEventHandler:Lcom/autochips/inputsource/HDMI$EventHandler;

.field private mIsBTHIDConnected:Z

.field private mIsCalibrate:Z

.field private mIsLandScape:Z

.field private mIsLastButton:Z

.field private mLastX:I

.field private mLastY:I

.field private mOnMHLPhoneSignalListener:Lcom/autochips/inputsource/HDMI$OnMHLPhoneSignalListener;

.field public mPhoneResolutionIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "mhlhid"

    .line 34
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/Point;

    .line 188
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Point;

    const/16 v3, 0x12c

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Landroid/graphics/Point;

    const/16 v4, -0x12c

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, -0x400

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/autochips/inputsource/HDMI;->calibratPoint:[Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "HDMI.JAVA"

    .line 207
    invoke-direct {p0}, Lcom/autochips/inputsource/InputSourceClient;-><init>()V

    const/4 v1, 0x0

    .line 173
    iput-object v1, p0, Lcom/autochips/inputsource/HDMI;->mHDMIContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 175
    iput-boolean v2, p0, Lcom/autochips/inputsource/HDMI;->mIsCalibrate:Z

    .line 176
    iput-boolean v2, p0, Lcom/autochips/inputsource/HDMI;->mIsLandScape:Z

    .line 177
    iput-boolean v2, p0, Lcom/autochips/inputsource/HDMI;->mIsLastButton:Z

    .line 178
    iput v2, p0, Lcom/autochips/inputsource/HDMI;->mCalibrateNum:I

    .line 179
    iput v2, p0, Lcom/autochips/inputsource/HDMI;->mLastX:I

    .line 180
    iput v2, p0, Lcom/autochips/inputsource/HDMI;->mLastY:I

    const/4 v3, 0x4

    new-array v3, v3, [I

    .line 181
    iput-object v3, p0, Lcom/autochips/inputsource/HDMI;->carkitPoint:[I

    .line 182
    iput-boolean v2, p0, Lcom/autochips/inputsource/HDMI;->mIsBTHIDConnected:Z

    .line 185
    iput v2, p0, Lcom/autochips/inputsource/HDMI;->mPhoneResolutionIndex:I

    .line 672
    new-instance v2, Lcom/autochips/inputsource/HDMI$1;

    invoke-direct {v2, p0}, Lcom/autochips/inputsource/HDMI$1;-><init>(Lcom/autochips/inputsource/HDMI;)V

    iput-object v2, p0, Lcom/autochips/inputsource/HDMI;->mBtHidListener:Landroid/content/BroadcastReceiver;

    .line 209
    :try_start_0
    invoke-static {}, Lcom/autochips/inputsource/HDMI;->getService()Landroid/inputsource/IInputSourceService;

    move-result-object v2

    sput-object v2, Lcom/autochips/inputsource/HDMI;->mService:Landroid/inputsource/IInputSourceService;

    .line 210
    sget-object v2, Lcom/autochips/inputsource/HDMI;->mService:Landroid/inputsource/IInputSourceService;

    if-eqz v2, :cond_0

    .line 211
    sget-object v2, Lcom/autochips/inputsource/HDMI;->mService:Landroid/inputsource/IInputSourceService;

    invoke-interface {v2, p0}, Landroid/inputsource/IInputSourceService;->create(Landroid/inputsource/IInputSourceClient;)Landroid/inputsource/IInputSourceBase;

    move-result-object v2

    iput-object v2, p0, Lcom/autochips/inputsource/HDMI;->mSource:Landroid/inputsource/IInputSourceBase;

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/autochips/inputsource/HDMI;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "construct mService get null"

    .line 214
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    new-instance v2, Landroid/cbm/CBManager;

    invoke-direct {v2}, Landroid/cbm/CBManager;-><init>()V

    iput-object v2, p0, Lcom/autochips/inputsource/HDMI;->mCBM:Landroid/cbm/CBManager;

    if-eqz p1, :cond_3

    .line 218
    iput-object p1, p0, Lcom/autochips/inputsource/HDMI;->mHDMIContext:Landroid/content/Context;

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHDMIContext:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/inputsource/HDMI;->mHDMIContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "autochips.intent.action.CONNECT_STATE"

    .line 221
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "autochips.intent.action.RESOLUTION"

    .line 222
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lcom/autochips/inputsource/HDMI;->mHDMIContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/autochips/inputsource/HDMI;->mBtHidListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 226
    new-instance v1, Lcom/autochips/inputsource/HDMI$EventHandler;

    invoke-direct {v1, p0, p0, p1}, Lcom/autochips/inputsource/HDMI$EventHandler;-><init>(Lcom/autochips/inputsource/HDMI;Lcom/autochips/inputsource/HDMI;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/autochips/inputsource/HDMI;->mHDMIEventHandler:Lcom/autochips/inputsource/HDMI$EventHandler;

    goto :goto_1

    .line 227
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 228
    new-instance v1, Lcom/autochips/inputsource/HDMI$EventHandler;

    invoke-direct {v1, p0, p0, p1}, Lcom/autochips/inputsource/HDMI$EventHandler;-><init>(Lcom/autochips/inputsource/HDMI;Lcom/autochips/inputsource/HDMI;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/autochips/inputsource/HDMI;->mHDMIEventHandler:Lcom/autochips/inputsource/HDMI$EventHandler;

    goto :goto_1

    .line 230
    :cond_2
    iput-object v1, p0, Lcom/autochips/inputsource/HDMI;->mHDMIEventHandler:Lcom/autochips/inputsource/HDMI$EventHandler;

    goto :goto_1

    :cond_3
    const-string p1, "mHDMIContext is null"

    .line 233
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string/jumbo p1, "source create fail"

    .line 237
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private SendHIDControlData(I)Z
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/autochips/inputsource/HDMI;->mHDMIContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "HDMI.JAVA"

    const-string v0, "SendMSGToQueryResolution - mHDMIContext is null"

    .line 660
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 663
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "autochips.intent.action.MOUSE_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "HIDCmd"

    .line 664
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 665
    iget-object p1, p0, Lcom/autochips/inputsource/HDMI;->mHDMIContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method private SendHIDMouseData(ZII)Z
    .locals 2

    .line 643
    iget-object v0, p0, Lcom/autochips/inputsource/HDMI;->mHDMIContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "HDMI.JAVA"

    const-string p2, "SendMSGToQueryResolution - mHDMIContext is null"

    .line 644
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 647
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "autochips.intent.action.MOUSE_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ButtonDown"

    .line 648
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "CoordinateX"

    .line 649
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "CoordinateY"

    .line 650
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 651
    iget-object p1, p0, Lcom/autochips/inputsource/HDMI;->mHDMIContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method private SendMSGToNotifyResolution(I)Z
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/autochips/inputsource/HDMI;->mHDMIContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "HDMI.JAVA"

    const-string v0, "SendMSGToQueryResolution - mHDMIContext is null"

    .line 631
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 634
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "autochips.intent.action.NOTIFY_RESOLUTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "PhoneResolution"

    .line 635
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 636
    iget-object p1, p0, Lcom/autochips/inputsource/HDMI;->mHDMIContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method private SendMSGToQueryHIDConnection()Z
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/autochips/inputsource/HDMI;->mHDMIContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "HDMI.JAVA"

    const-string v1, "SendMSGToQueryHIDConnection - mHDMIContext is null"

    .line 606
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 609
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "autochips.intent.action.GET_CONNECT_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    iget-object v1, p0, Lcom/autochips/inputsource/HDMI;->mHDMIContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method private SendMSGToQueryResolution()Z
    .locals 2

    .line 617
    iget-object v0, p0, Lcom/autochips/inputsource/HDMI;->mHDMIContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "HDMI.JAVA"

    const-string v1, "SendMSGToQueryResolution - mHDMIContext is null"

    .line 618
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 621
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "autochips.intent.action.GET_RESOLUTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    iget-object v1, p0, Lcom/autochips/inputsource/HDMI;->mHDMIContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic access$000(Lcom/autochips/inputsource/HDMI;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/autochips/inputsource/HDMI;->mIsBTHIDConnected:Z

    return p0
.end method

.method static synthetic access$002(Lcom/autochips/inputsource/HDMI;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/autochips/inputsource/HDMI;->mIsBTHIDConnected:Z

    return p1
.end method

.method static synthetic access$102(Lcom/autochips/inputsource/HDMI;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/autochips/inputsource/HDMI;->mLastX:I

    return p1
.end method

.method static synthetic access$202(Lcom/autochips/inputsource/HDMI;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/autochips/inputsource/HDMI;->mLastY:I

    return p1
.end method

.method static synthetic access$302(Lcom/autochips/inputsource/HDMI;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/autochips/inputsource/HDMI;->mIsLastButton:Z

    return p1
.end method

.method static synthetic access$400(Lcom/autochips/inputsource/HDMI;)Z
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/autochips/inputsource/HDMI;->SendMSGToQueryResolution()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/autochips/inputsource/HDMI;I)I
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/autochips/inputsource/HDMI;->setPhoneResolution(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/autochips/inputsource/HDMI;)Lcom/autochips/inputsource/HDMI$OnMHLPhoneSignalListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/autochips/inputsource/HDMI;->mOnMHLPhoneSignalListener:Lcom/autochips/inputsource/HDMI$OnMHLPhoneSignalListener;

    return-object p0
.end method

.method private native getCarKitMax(ZZ)I
.end method

.method private native getPhoneInputValidDetect(IIZ)Z
.end method

.method private native getPhoneMax(ZZ)I
.end method

.method private native getPhoneResolution([IZ)I
.end method

.method private native getPhoneX(IZ)I
.end method

.method private native getPhoneY(IZ)I
.end method

.method private native setPhoneResolution(I)I
.end method


# virtual methods
.method public HandleButtonEvent(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0x400

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 600
    :cond_0
    invoke-direct {p0, p1}, Lcom/autochips/inputsource/HDMI;->SendHIDControlData(I)Z

    move-result p1

    return p1

    .line 596
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HandleButtonEvent - button Cmd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not right"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HDMI.JAVA"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public HandleMouseEvent(III)V
    .locals 5

    .line 544
    iget-boolean v0, p0, Lcom/autochips/inputsource/HDMI;->mIsLandScape:Z

    invoke-direct {p0, p2, p3, v0}, Lcom/autochips/inputsource/HDMI;->getPhoneInputValidDetect(IIZ)Z

    move-result v0

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMouseEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HDMI.JAVA"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    goto :goto_1

    .line 576
    :cond_0
    iget-boolean p1, p0, Lcom/autochips/inputsource/HDMI;->mIsLastButton:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 578
    invoke-direct {p0, p2, p2, p2}, Lcom/autochips/inputsource/HDMI;->SendHIDMouseData(ZII)Z

    .line 580
    iget-boolean p1, p0, Lcom/autochips/inputsource/HDMI;->mIsLandScape:Z

    invoke-direct {p0, v1, p1}, Lcom/autochips/inputsource/HDMI;->getPhoneMax(ZZ)I

    move-result p1

    .line 581
    iget-boolean p3, p0, Lcom/autochips/inputsource/HDMI;->mIsLandScape:Z

    invoke-direct {p0, p2, p3}, Lcom/autochips/inputsource/HDMI;->getPhoneMax(ZZ)I

    move-result p3

    .line 582
    invoke-direct {p0, p2, p1, p3}, Lcom/autochips/inputsource/HDMI;->SendHIDMouseData(ZII)Z

    .line 585
    :cond_1
    iget-boolean p1, p0, Lcom/autochips/inputsource/HDMI;->mIsLandScape:Z

    invoke-direct {p0, v1, p1}, Lcom/autochips/inputsource/HDMI;->getCarKitMax(ZZ)I

    move-result p1

    iput p1, p0, Lcom/autochips/inputsource/HDMI;->mLastX:I

    .line 586
    iget-boolean p1, p0, Lcom/autochips/inputsource/HDMI;->mIsLandScape:Z

    invoke-direct {p0, p2, p1}, Lcom/autochips/inputsource/HDMI;->getCarKitMax(ZZ)I

    move-result p1

    iput p1, p0, Lcom/autochips/inputsource/HDMI;->mLastY:I

    .line 587
    iput-boolean p2, p0, Lcom/autochips/inputsource/HDMI;->mIsLastButton:Z

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    .line 552
    iget p1, p0, Lcom/autochips/inputsource/HDMI;->mLastX:I

    sub-int p1, p2, p1

    iget-boolean v0, p0, Lcom/autochips/inputsource/HDMI;->mIsLandScape:Z

    invoke-direct {p0, p1, v0}, Lcom/autochips/inputsource/HDMI;->getPhoneX(IZ)I

    move-result p1

    .line 553
    iget v0, p0, Lcom/autochips/inputsource/HDMI;->mLastY:I

    sub-int v0, p3, v0

    iget-boolean v3, p0, Lcom/autochips/inputsource/HDMI;->mIsLandScape:Z

    invoke-direct {p0, v0, v3}, Lcom/autochips/inputsource/HDMI;->getPhoneY(IZ)I

    move-result v0

    .line 554
    invoke-direct {p0, v1, p1, v0}, Lcom/autochips/inputsource/HDMI;->SendHIDMouseData(ZII)Z

    .line 555
    iget-boolean p1, p0, Lcom/autochips/inputsource/HDMI;->mIsLastButton:Z

    if-nez p1, :cond_3

    const-wide/16 v3, 0xa

    .line 558
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "thread sleep exception = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_3
    :goto_0
    iput p2, p0, Lcom/autochips/inputsource/HDMI;->mLastX:I

    .line 565
    iput p3, p0, Lcom/autochips/inputsource/HDMI;->mLastY:I

    .line 566
    iput-boolean v1, p0, Lcom/autochips/inputsource/HDMI;->mIsLastButton:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public getBTHIDConnectState()Z
    .locals 2

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBTHIDConnectStatus: mIsBTHIDConnected is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/autochips/inputsource/HDMI;->mIsBTHIDConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HDMI.JAVA"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-boolean v0, p0, Lcom/autochips/inputsource/HDMI;->mIsBTHIDConnected:Z

    return v0
.end method

.method public getCalibrateResolutionValid()Z
    .locals 4

    .line 482
    iget v0, p0, Lcom/autochips/inputsource/HDMI;->mCalibrateNum:I

    const-string v1, "HDMI.JAVA"

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    const-string v0, "Don\'t Get Enough Calibrate Point"

    .line 483
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/autochips/inputsource/HDMI;->carkitPoint:[I

    iget-boolean v3, p0, Lcom/autochips/inputsource/HDMI;->mIsLandScape:Z

    invoke-direct {p0, v0, v3}, Lcom/autochips/inputsource/HDMI;->getPhoneResolution([IZ)I

    move-result v0

    iput v0, p0, Lcom/autochips/inputsource/HDMI;->mPhoneResolutionIndex:I

    if-eqz v0, :cond_1

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhoneResolutionIndex is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/autochips/inputsource/HDMI;->mPhoneResolutionIndex:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget v0, p0, Lcom/autochips/inputsource/HDMI;->mPhoneResolutionIndex:I

    invoke-direct {p0, v0}, Lcom/autochips/inputsource/HDMI;->SendMSGToNotifyResolution(I)Z

    .line 491
    iput-boolean v2, p0, Lcom/autochips/inputsource/HDMI;->mIsCalibrate:Z

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "Calibrate Failed"

    .line 494
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iput-boolean v2, p0, Lcom/autochips/inputsource/HDMI;->mIsCalibrate:Z

    return v2
.end method

.method public getPhoneResolutionValid()Z
    .locals 2

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPhoneResolutionIndex: mPhoneResolutionIndex is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/inputsource/HDMI;->mPhoneResolutionIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HDMI.JAVA"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget v0, p0, Lcom/autochips/inputsource/HDMI;->mPhoneResolutionIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getSignalStatus()I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 312
    fill-array-data v0, :array_0

    const-string v1, "HDMI.JAVA"

    const-string v2, "get signal status"

    .line 313
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 315
    :try_start_0
    iget-object v3, p0, Lcom/autochips/inputsource/HDMI;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v3, :cond_0

    const-string/jumbo v3, "sendRcp fail mSource null"

    .line 316
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x1774

    return v0

    .line 319
    :cond_0
    iget-object v3, p0, Lcom/autochips/inputsource/HDMI;->mSource:Landroid/inputsource/IInputSourceBase;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0}, Landroid/inputsource/IInputSourceBase;->getParam(I[I)I

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "get signal status fail"

    .line 322
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_0
    aget v0, v0, v2

    return v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public notifymsg(III)I
    .locals 4

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI notify msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";param1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";param2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HDMI.JAVA"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/autochips/inputsource/HDMI;->mHDMIEventHandler:Lcom/autochips/inputsource/HDMI$EventHandler;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    .line 357
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, p2, p3, v3}, Lcom/autochips/inputsource/HDMI$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/16 v3, 0x3e9

    if-eq p1, v3, :cond_2

    const/16 v3, 0x3ea

    if-eq p1, v3, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 367
    iput-boolean v2, p0, Lcom/autochips/inputsource/HDMI;->mIsLandScape:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 369
    iput-boolean v2, p0, Lcom/autochips/inputsource/HDMI;->mIsLandScape:Z

    .line 371
    :goto_0
    iget-object v2, p0, Lcom/autochips/inputsource/HDMI;->mHDMIEventHandler:Lcom/autochips/inputsource/HDMI$EventHandler;

    invoke-virtual {v2, v0}, Lcom/autochips/inputsource/HDMI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDMI notify msg:PHONE_ORIENTATION_CHANGE mIsLandScape is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/autochips/inputsource/HDMI;->mIsLandScape:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 361
    invoke-direct {p0}, Lcom/autochips/inputsource/HDMI;->SendMSGToQueryHIDConnection()Z

    .line 363
    :cond_3
    iget-object v1, p0, Lcom/autochips/inputsource/HDMI;->mHDMIEventHandler:Lcom/autochips/inputsource/HDMI$EventHandler;

    invoke-virtual {v1, v0}, Lcom/autochips/inputsource/HDMI$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/autochips/inputsource/InputSourceClient;->notifymsg(III)I

    move-result p1

    return p1
.end method

.method public play()I
    .locals 2

    const-string v0, "HDMI.JAVA"

    const-string v1, "HDMI play"

    .line 336
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-super {p0}, Lcom/autochips/inputsource/InputSourceClient;->play()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    const-string v0, "HDMI.JAVA"

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/autochips/inputsource/HDMI;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v1, :cond_0

    const-string v1, "release mSource null"

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/autochips/inputsource/HDMI;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {v1}, Landroid/inputsource/IInputSourceBase;->release()V

    .line 254
    iget-object v1, p0, Lcom/autochips/inputsource/HDMI;->mCBM:Landroid/cbm/CBManager;

    invoke-virtual {v1}, Landroid/cbm/CBManager;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo v1, "source release fail"

    .line 256
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lcom/autochips/inputsource/HDMI;->mSource:Landroid/inputsource/IInputSourceBase;

    .line 259
    iget-object v0, p0, Lcom/autochips/inputsource/HDMI;->mHDMIContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/autochips/inputsource/HDMI;->mBtHidListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    invoke-super {p0}, Lcom/autochips/inputsource/InputSourceClient;->release()V

    return-void
.end method

.method public sendRcp(I)I
    .locals 3

    const-string v0, "HDMI.JAVA"

    const-string/jumbo v1, "sendRcp"

    .line 296
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/autochips/inputsource/HDMI;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v1, :cond_0

    const-string/jumbo p1, "sendRcp fail mSource null"

    .line 299
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1774

    return p1

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/autochips/inputsource/HDMI;->mSource:Landroid/inputsource/IInputSourceBase;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Landroid/inputsource/IInputSourceBase;->setCmd(II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "sendRcp fail"

    .line 304
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setCalibrate()V
    .locals 8

    const-string/jumbo v0, "thread sleep exception = "

    const-string v1, "HDMI.JAVA"

    const-string v2, "Calibrate Start"

    .line 500
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    sget-object v2, Lcom/autochips/inputsource/HDMI;->calibratPoint:[Landroid/graphics/Point;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Point;->x:I

    sget-object v4, Lcom/autochips/inputsource/HDMI;->calibratPoint:[Landroid/graphics/Point;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/graphics/Point;->y:I

    const/4 v5, 0x0

    invoke-direct {p0, v5, v2, v4}, Lcom/autochips/inputsource/HDMI;->SendHIDMouseData(ZII)Z

    const-wide/16 v6, 0xa

    .line 504
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :goto_0
    sget-object v2, Lcom/autochips/inputsource/HDMI;->calibratPoint:[Landroid/graphics/Point;

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Point;->x:I

    sget-object v4, Lcom/autochips/inputsource/HDMI;->calibratPoint:[Landroid/graphics/Point;

    aget-object v3, v4, v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v5, v2, v3}, Lcom/autochips/inputsource/HDMI;->SendHIDMouseData(ZII)Z

    .line 512
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :goto_1
    sget-object v2, Lcom/autochips/inputsource/HDMI;->calibratPoint:[Landroid/graphics/Point;

    aget-object v2, v2, v5

    iget v2, v2, Landroid/graphics/Point;->x:I

    sget-object v3, Lcom/autochips/inputsource/HDMI;->calibratPoint:[Landroid/graphics/Point;

    aget-object v3, v3, v5

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v5, v2, v3}, Lcom/autochips/inputsource/HDMI;->SendHIDMouseData(ZII)Z

    .line 521
    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :goto_2
    invoke-direct {p0, v5, v5, v5}, Lcom/autochips/inputsource/HDMI;->SendHIDMouseData(ZII)Z

    .line 529
    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v0, 0x1

    .line 534
    iput-boolean v0, p0, Lcom/autochips/inputsource/HDMI;->mIsCalibrate:Z

    return-void
.end method

.method public setCarkitPoint(III)V
    .locals 7

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCarkitPoint["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HDMI.JAVA"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const-string/jumbo v2, "thread sleep exception = "

    const-wide/16 v3, 0xa

    const/4 v5, 0x0

    if-eq p3, v0, :cond_3

    const/4 v6, 0x2

    if-eq p3, v6, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    return-void

    .line 455
    :cond_0
    iget-object p3, p0, Lcom/autochips/inputsource/HDMI;->carkitPoint:[I

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    aput p1, p3, v0

    .line 456
    iput v1, p0, Lcom/autochips/inputsource/HDMI;->mCalibrateNum:I

    goto/16 :goto_3

    .line 438
    :cond_1
    iget-object p3, p0, Lcom/autochips/inputsource/HDMI;->carkitPoint:[I

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    aput p1, p3, v6

    .line 439
    iput v0, p0, Lcom/autochips/inputsource/HDMI;->mCalibrateNum:I

    .line 440
    sget-object p1, Lcom/autochips/inputsource/HDMI;->calibratPoint:[Landroid/graphics/Point;

    aget-object p1, p1, v0

    iget p1, p1, Landroid/graphics/Point;->x:I

    sget-object p2, Lcom/autochips/inputsource/HDMI;->calibratPoint:[Landroid/graphics/Point;

    aget-object p2, p2, v0

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v5, p1, p2}, Lcom/autochips/inputsource/HDMI;->SendHIDMouseData(ZII)Z

    .line 442
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 444
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_0
    invoke-direct {p0, v5, v5, v5}, Lcom/autochips/inputsource/HDMI;->SendHIDMouseData(ZII)Z

    .line 448
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    .line 450
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 420
    :cond_2
    iget-object p3, p0, Lcom/autochips/inputsource/HDMI;->carkitPoint:[I

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    aput p1, p3, v0

    .line 421
    iput v6, p0, Lcom/autochips/inputsource/HDMI;->mCalibrateNum:I

    .line 422
    sget-object p1, Lcom/autochips/inputsource/HDMI;->calibratPoint:[Landroid/graphics/Point;

    aget-object p1, p1, v6

    iget p1, p1, Landroid/graphics/Point;->x:I

    sget-object p2, Lcom/autochips/inputsource/HDMI;->calibratPoint:[Landroid/graphics/Point;

    aget-object p2, p2, v6

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v5, p1, p2}, Lcom/autochips/inputsource/HDMI;->SendHIDMouseData(ZII)Z

    .line 424
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 426
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :goto_1
    invoke-direct {p0, v5, v5, v5}, Lcom/autochips/inputsource/HDMI;->SendHIDMouseData(ZII)Z

    .line 431
    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 433
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 403
    :cond_3
    iget-object p3, p0, Lcom/autochips/inputsource/HDMI;->carkitPoint:[I

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    aput p1, p3, v5

    .line 404
    iput v0, p0, Lcom/autochips/inputsource/HDMI;->mCalibrateNum:I

    .line 405
    sget-object p1, Lcom/autochips/inputsource/HDMI;->calibratPoint:[Landroid/graphics/Point;

    aget-object p1, p1, v0

    iget p1, p1, Landroid/graphics/Point;->x:I

    sget-object p2, Lcom/autochips/inputsource/HDMI;->calibratPoint:[Landroid/graphics/Point;

    aget-object p2, p2, v0

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v5, p1, p2}, Lcom/autochips/inputsource/HDMI;->SendHIDMouseData(ZII)Z

    .line 407
    :try_start_4
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception p1

    .line 409
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_2
    invoke-direct {p0, v5, v5, v5}, Lcom/autochips/inputsource/HDMI;->SendHIDMouseData(ZII)Z

    .line 413
    :try_start_5
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    :catch_5
    move-exception p1

    .line 415
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public setOnMHLPhoneSignalListener(Lcom/autochips/inputsource/HDMI$OnMHLPhoneSignalListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/autochips/inputsource/HDMI;->mOnMHLPhoneSignalListener:Lcom/autochips/inputsource/HDMI$OnMHLPhoneSignalListener;

    return-void
.end method

.method public setPhoneOrientation(Z)V
    .locals 2

    .line 539
    iput-boolean p1, p0, Lcom/autochips/inputsource/HDMI;->mIsLandScape:Z

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phone Orientation isLandscape is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HDMI.JAVA"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSource(I)I
    .locals 3

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSource inputSrcType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HDMI.JAVA"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/autochips/inputsource/HDMI;->mCBM:Landroid/cbm/CBManager;

    const/16 v0, 0xd

    iput v0, p0, Lcom/autochips/inputsource/HDMI;->mSrcType:I

    const/4 v0, 0x0

    .line 283
    :try_start_0
    iget-object v2, p0, Lcom/autochips/inputsource/HDMI;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v2, :cond_0

    const-string/jumbo p1, "setSource mSource null"

    .line 284
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1774

    return p1

    .line 287
    :cond_0
    iget-object v2, p0, Lcom/autochips/inputsource/HDMI;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {v2, p1, v0, v0}, Landroid/inputsource/IInputSourceBase;->setSource(III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "setsource fail!"

    .line 289
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public stop()I
    .locals 2

    const-string v0, "HDMI.JAVA"

    const-string v1, "HDMI stop"

    .line 347
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-super {p0}, Lcom/autochips/inputsource/InputSourceClient;->stop()I

    move-result v0

    return v0
.end method
