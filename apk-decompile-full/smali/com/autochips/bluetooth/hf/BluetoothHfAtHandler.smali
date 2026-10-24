.class public Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;
.super Ljava/lang/Object;
.source "BluetoothHfAtHandler.java"


# static fields
.field public static final ACTION_AG_MIC_GAIN_CHANGED:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.AG_MIC_GAIN_CHANGED"

.field public static final ACTION_AG_VOLUME_CHANGED:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.AG_VOLUME_CHANGED"

.field public static final ACTION_BLUETOOTH_AT_CMD_WARNING:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.BLUETOOTH_AT_CMD_WARNING"

.field public static final ACTION_CALLSETUP_CHANGED:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.CALLSETUP_STATE_CHANGED"

.field public static final ACTION_CALL_STATE_CHANGED:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.CALL_STATE_CHANGED"

.field public static final ACTION_INDICATORCONTROL_CHANGED:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.INDICATORCONTROL_CHANGED"

.field public static final ACTION_PHONEIDENTIFICATION_CHANGED:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.PHONEIDENTIFICATION_CHANGED"

.field public static final ACTION_PHONE_NUMBER_CHANGED:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.PHONE_NUMBER_CHANGED"

.field private static final BRSF_AG_EC_NR:I = 0x2

.field private static final BRSF_AG_ENHANCED_CALL_CONTROL:I = 0x80

.field private static final BRSF_AG_ENHANCED_CALL_STATUS:I = 0x40

.field private static final BRSF_AG_ENHANCED_ERR_RESULT_CODES:I = 0x100

.field private static final BRSF_AG_IN_BAND_RING:I = 0x8

.field private static final BRSF_AG_REJECT_CALL:I = 0x20

.field private static final BRSF_AG_THREE_WAY_CALLING:I = 0x1

.field private static final BRSF_AG_VOICE_RECOG:I = 0x4

.field private static final BRSF_AG_VOICE_TAG_NUMBE:I = 0x10

.field private static final BRSF_HF_CLIP:I = 0x4

.field private static final BRSF_HF_CW_THREE_WAY_CALLING:I = 0x2

.field private static final BRSF_HF_EC_NR:I = 0x1

.field private static final BRSF_HF_ENHANCED_CALL_CONTROL:I = 0x40

.field private static final BRSF_HF_ENHANCED_CALL_STATUS:I = 0x20

.field private static final BRSF_HF_REMOTE_VOL_CONTROL:I = 0x10

.field private static final BRSF_HF_VOICE_REG_ACT:I = 0x8

.field private static final CIND_Resp_Str:[Ljava/lang/String;

.field private static DEBUG:Z = false

.field public static final EXTRA_BLUETOOTH_AT_CMD_WANING_TYPE:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.BLUETOOTH_AT_CMD_WARNING_TYPE"

.field public static final EXTRA_NEW_AG_MIC_GAIN:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_MIC_GAIN"

.field public static final EXTRA_NEW_AG_VOLUME:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_AG_VOLUME"

.field public static final EXTRA_NEW_BATTCHG:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_BATTCHG"

.field public static final EXTRA_NEW_CALLSETUP_STATE:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_CALLSETUP_STATE"

.field public static final EXTRA_NEW_CALL_STATE:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_CALL_STATE"

.field public static final EXTRA_NEW_PHONEIDENTIFICATION:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONEIDENTIFICATION"

.field public static final EXTRA_NEW_PHONE_NUMBER:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NUMBER"

.field public static final EXTRA_NEW_ROAM:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_ROAM"

.field public static final EXTRA_NEW_SERVICE:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_SERVICE"

.field public static final EXTRA_NEW_SIGNAL:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_SIGNAL"

.field public static final HF_AT_CMD_RESULT_ERROR:I = 0x0

.field public static final HF_AT_CMD_RESULT_NORESPONSE:I = 0x2

.field public static final HF_AT_CMD_RESULT_NO_CARRIER:I = 0x4

.field public static final HF_AT_CMD_RESULT_OK:I = 0x1

.field public static final HF_AT_CMD_RESULT_SEND_FAIL:I = 0x3

.field public static final HF_AT_CMD_WARNING_NONE:I = 0x0

.field public static final HF_AT_CMD_WARNING_NO_CARRIER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothHfAtHandler"

.field public static final TYPE_HANDSFREE:I = 0x2

.field public static final TYPE_HANDSFREE_AUDIOGATEWAY:I = 0x3

.field public static final TYPE_HEADSET:I = 0x1

.field public static final TYPE_UNKNOWN:I

.field public static mCall:I

.field public static mCallsetup:I

.field private static mClipPhoneNumber:Ljava/lang/String;

.field private static mCurrentRingtone:Landroid/media/Ringtone;

.field private static mHfAtCmdResult:I

.field protected static mHfAtParser:Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;

.field private static mLocalBrsf:I

.field private static mRemoteBrsf:I

.field private static mhfservice:Lcom/autochips/bluetooth/hf/BluetoothHfService;


# instance fields
.field private mAGMicGain:I

.field private mAGMicGain_intent:Landroid/content/Intent;

.field private mAGSpeakerGain:I

.field private mAGVolume_intent:Landroid/content/Intent;

.field private mATCmdWarning_intent:Landroid/content/Intent;

.field private mBattchg:I

.field private mBattchgCIEVIndex:I

.field private mCallCIEVIndex:I

.field private mCall_intent:Landroid/content/Intent;

.field private mCallheldCIEVIndex:I

.field private mCallsetupCIEVIndex:I

.field private mCallsetup_intent:Landroid/content/Intent;

.field private mClccUsed:[Z

.field private mClcc_dir:I

.field private mClcc_idx:I

.field private mClcc_mode:I

.field private mClcc_mprty:I

.field private mClcc_number:Ljava/lang/String;

.field private mClcc_status:I

.field private mClcc_type:I

.field private mContext:Landroid/content/Context;

.field private mInbandRingtoneOn:Z

.field private mIndicatorControl_intent:Landroid/content/Intent;

.field private mPhoneIdentification_intent:Landroid/content/Intent;

.field private mPhonenumber_intent:Landroid/content/Intent;

.field private mRoam:I

.field private mRoamCIEVIndex:I

.field private mService:I

.field private mServiceCIEVIndex:I

.field private mSignal:I

.field private mSignalCIEVIndex:I

.field private m_bIsPlayingRingTone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 34
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugHF:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->DEBUG:Z

    const/4 v0, 0x0

    .line 140
    sput v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mRemoteBrsf:I

    .line 141
    sput v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mLocalBrsf:I

    const-string v0, ""

    .line 142
    sput-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mClipPhoneNumber:Ljava/lang/String;

    const-string/jumbo v1, "service"

    const-string v2, "callsetup"

    const-string v3, "call_setup"

    const-string v4, "callheld"

    const-string v5, "call"

    const-string/jumbo v6, "signal"

    const-string/jumbo v7, "roam"

    const-string v8, "battchg"

    .line 220
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->CIND_Resp_Str:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/autochips/bluetooth/hf/BluetoothHfService;)V
    .locals 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 41
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mAGMicGain:I

    .line 42
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mAGSpeakerGain:I

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->m_bIsPlayingRingTone:Z

    .line 242
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mServiceCIEVIndex:I

    .line 243
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallCIEVIndex:I

    .line 244
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallsetupCIEVIndex:I

    .line 245
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallheldCIEVIndex:I

    .line 246
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mSignalCIEVIndex:I

    .line 247
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mRoamCIEVIndex:I

    .line 248
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mBattchgCIEVIndex:I

    .line 249
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mInbandRingtoneOn:Z

    .line 185
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mContext:Landroid/content/Context;

    .line 186
    sput-object p2, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mhfservice:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    .line 187
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 p1, 0x2

    .line 190
    sput p1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mHfAtCmdResult:I

    const-string/jumbo p1, "unkown"

    .line 191
    sput-object p1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mClipPhoneNumber:Ljava/lang/String;

    const/16 p1, 0x77

    .line 193
    sput p1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mLocalBrsf:I

    .line 200
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.CALLSETUP_STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallsetup_intent:Landroid/content/Intent;

    .line 201
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.CALL_STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCall_intent:Landroid/content/Intent;

    .line 202
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.PHONE_NUMBER_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mPhonenumber_intent:Landroid/content/Intent;

    .line 203
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.BLUETOOTH_AT_CMD_WARNING"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mATCmdWarning_intent:Landroid/content/Intent;

    .line 204
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.AG_VOLUME_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mAGVolume_intent:Landroid/content/Intent;

    .line 205
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.AG_MIC_GAIN_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mAGMicGain_intent:Landroid/content/Intent;

    .line 206
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.INDICATORCONTROL_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mIndicatorControl_intent:Landroid/content/Intent;

    .line 207
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.PHONEIDENTIFICATION_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mPhoneIdentification_intent:Landroid/content/Intent;

    .line 209
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->initializeAtParser()V

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->resetAtState()V

    :cond_1
    return-void
.end method

.method private CindIndexParser([Ljava/lang/Object;)V
    .locals 5

    .line 464
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 465
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 469
    :cond_0
    iput v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mServiceCIEVIndex:I

    .line 470
    iput v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallCIEVIndex:I

    .line 471
    iput v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallsetupCIEVIndex:I

    .line 472
    iput v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallheldCIEVIndex:I

    .line 473
    iput v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mSignalCIEVIndex:I

    .line 474
    iput v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mRoamCIEVIndex:I

    .line 475
    iput v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mBattchgCIEVIndex:I

    .line 476
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->parsingCIND(Ljava/lang/String;)V

    return-void
.end method

.method public static HSAtCmdAcceptIncommingCall()V
    .locals 1

    const-string v0, "AT+CKPD=200"

    .line 361
    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->sendURC(Ljava/lang/String;)Z

    return-void
.end method

.method public static HfAtCmdClearCLIPPhoneNumber()V
    .locals 1

    const-string/jumbo v0, "unkown"

    .line 387
    sput-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mClipPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public static HfAtCmdQueryCalllist()V
    .locals 1

    const-string v0, "AT+CLCC"

    .line 333
    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->sendURC(Ljava/lang/String;)Z

    return-void
.end method

.method public static HfAtCmdQuerySupportFeatures()V
    .locals 2

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+BRSF="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mLocalBrsf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->sendURC(Ljava/lang/String;)Z

    return-void
.end method

.method public static HfAtCmdReadCGMI()V
    .locals 1

    const-string v0, "AT+CGMI"

    .line 357
    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->sendURC(Ljava/lang/String;)Z

    return-void
.end method

.method public static HfAtCmdReadCGMM()V
    .locals 1

    const-string v0, "AT+CGMM"

    .line 353
    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->sendURC(Ljava/lang/String;)Z

    return-void
.end method

.method public static HfAtCmdReadCIND()V
    .locals 1

    const-string v0, "AT+CIND?"

    .line 349
    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->sendURC(Ljava/lang/String;)Z

    return-void
.end method

.method public static HfAtCmdSetBVRA(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "AT+BVRA=1"

    .line 366
    invoke-static {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->sendURC(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string p0, "AT+BVRA=0"

    .line 368
    invoke-static {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->sendURC(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public static HfAtCmdSetCLIP(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "AT+CLIP=1"

    .line 402
    invoke-static {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->sendURC(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string p0, "AT+CLIP=0"

    .line 404
    invoke-static {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->sendURC(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public static HfAtCmdSetCMER(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "AT+CMER=3,0,0,1"

    .line 374
    invoke-static {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->sendURC(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string p0, "AT+CMER=3,0,0,0"

    .line 376
    invoke-static {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->sendURC(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public static HfAtCmdSetIndicator()V
    .locals 1

    const-string v0, "AT+BIA=1,1,1,1,1,1,1"

    .line 382
    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->sendURC(Ljava/lang/String;)Z

    return-void
.end method

.method public static HfAtCmdTestCIND()V
    .locals 1

    const-string v0, "AT+CIND=?"

    .line 345
    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->sendURC(Ljava/lang/String;)Z

    return-void
.end method

.method public static HfAtCmdTestallHeld()V
    .locals 1

    const-string v0, "AT+CHLD=?"

    .line 341
    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->sendURC(Ljava/lang/String;)Z

    return-void
.end method

.method public static HfConnectProcess()Z
    .locals 4

    .line 1034
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, " HfConnectProcess start..."

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 1036
    sput v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCall:I

    .line 1037
    sput v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallsetup:I

    .line 1040
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->clearHfAtCmdResult()V

    .line 1041
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->HfAtCmdQuerySupportFeatures()V

    const/16 v1, 0x14

    .line 1042
    invoke-static {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->waitforHfCmdResult(I)I

    .line 1044
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->HfAtCmdTestCIND()V

    const/16 v2, 0x28

    .line 1045
    invoke-static {v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->waitforHfCmdResult(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 1046
    sget-boolean v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, " HfConnect failure "

    invoke-static {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->log(Ljava/lang/String;)V

    :cond_1
    return v0

    .line 1051
    :cond_2
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->HfAtCmdReadCIND()V

    .line 1052
    invoke-static {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->waitforHfCmdResult(I)I

    .line 1057
    invoke-static {v3}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->HfAtCmdSetCMER(Z)V

    .line 1058
    invoke-static {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->waitforHfCmdResult(I)I

    .line 1062
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->isLocalDeviceSupportThreeWayCall()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->isRemoteDeviceSupportThreeWayCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1063
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->HfAtCmdTestallHeld()V

    .line 1064
    invoke-static {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->waitforHfCmdResult(I)I

    .line 1067
    :cond_3
    invoke-static {v3}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->HfAtCmdSetCLIP(Z)V

    .line 1068
    invoke-static {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->waitforHfCmdResult(I)I

    .line 1070
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "HfConnect sucess"

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->log(Ljava/lang/String;)V

    :cond_4
    return v3
.end method

.method private HfPlayRingTone()Z
    .locals 5

    .line 923
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HfPlayRingTone "

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->log(Ljava/lang/String;)V

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 928
    sget-boolean v3, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ATCMD] play ring tone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->log(Ljava/lang/String;)V

    .line 929
    :cond_1
    iget-object v3, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    sput-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCurrentRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_2

    .line 931
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    return v1

    .line 933
    :cond_2
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "mCurrentRingtone is null "

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->log(Ljava/lang/String;)V

    :cond_3
    return v2

    .line 937
    :cond_4
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "ringuri is null "

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->log(Ljava/lang/String;)V

    :cond_5
    return v2
.end method

.method public static HfStopRingTone()Z
    .locals 1

    .line 944
    sget-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCurrentRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 945
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    const/4 v0, 0x0

    .line 946
    sput-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCurrentRingtone:Landroid/media/Ringtone;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static IsHfRingTonePlaying()Z
    .locals 1

    .line 955
    sget-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCurrentRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 32
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallCIEVIndex:I

    return p0
.end method

.method static synthetic access$1100()I
    .locals 1

    .line 32
    sget v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mRemoteBrsf:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0

    .line 32
    sput p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mRemoteBrsf:I

    return p0
.end method

.method static synthetic access$1202(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mInbandRingtoneOn:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mSignalCIEVIndex:I

    return p0
.end method

.method static synthetic access$1400(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mSignal:I

    return p0
.end method

.method static synthetic access$1402(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mSignal:I

    return p1
.end method

.method static synthetic access$1500(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mBattchgCIEVIndex:I

    return p0
.end method

.method static synthetic access$1600(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mBattchg:I

    return p0
.end method

.method static synthetic access$1602(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mBattchg:I

    return p1
.end method

.method static synthetic access$1700(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mServiceCIEVIndex:I

    return p0
.end method

.method static synthetic access$1800(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mService:I

    return p0
.end method

.method static synthetic access$1802(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mService:I

    return p1
.end method

.method static synthetic access$1900(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mRoamCIEVIndex:I

    return p0
.end method

.method static synthetic access$2000(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mRoam:I

    return p0
.end method

.method static synthetic access$2002(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mRoam:I

    return p1
.end method

.method static synthetic access$202(I)I
    .locals 0

    .line 32
    sput p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mHfAtCmdResult:I

    return p0
.end method

.method static synthetic access$2100(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Intent;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mIndicatorControl_intent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;[Ljava/lang/Object;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->CindIndexParser([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300([Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->combineArgs([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Intent;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mPhoneIdentification_intent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->parserUseableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mClipPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    sput-object p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mClipPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Intent;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mPhonenumber_intent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mAGMicGain:I

    return p0
.end method

.method static synthetic access$2802(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mAGMicGain:I

    return p1
.end method

.method static synthetic access$2900(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Intent;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mAGMicGain_intent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Intent;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mATCmdWarning_intent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mAGSpeakerGain:I

    return p0
.end method

.method static synthetic access$3002(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mAGSpeakerGain:I

    return p1
.end method

.method static synthetic access$3100(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Intent;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mAGVolume_intent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mClcc_idx:I

    return p0
.end method

.method static synthetic access$3202(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mClcc_idx:I

    return p1
.end method

.method static synthetic access$3300(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mClcc_dir:I

    return p0
.end method

.method static synthetic access$3302(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mClcc_dir:I

    return p1
.end method

.method static synthetic access$3400(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mClcc_status:I

    return p0
.end method

.method static synthetic access$3402(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mClcc_status:I

    return p1
.end method

.method static synthetic access$3502(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mClcc_mode:I

    return p1
.end method

.method static synthetic access$3602(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mClcc_mprty:I

    return p1
.end method

.method static synthetic access$3700(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mClcc_number:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mClcc_number:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mClcc_type:I

    return p0
.end method

.method static synthetic access$3802(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mClcc_type:I

    return p1
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500()Lcom/autochips/bluetooth/hf/BluetoothHfService;
    .locals 1

    .line 32
    sget-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mhfservice:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->updatePhoneCallStatus(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->m_bIsPlayingRingTone:Z

    return p0
.end method

.method static synthetic access$702(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->m_bIsPlayingRingTone:Z

    return p1
.end method

.method static synthetic access$800(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Z
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->HfPlayRingTone()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallsetupCIEVIndex:I

    return p0
.end method

.method public static clearHfAtCmdResult()V
    .locals 1

    const/4 v0, 0x2

    .line 320
    sput v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mHfAtCmdResult:I

    return-void
.end method

.method private static combineArgs([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .line 482
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 483
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 484
    :goto_0
    array-length v1, p0

    sub-int/2addr v1, v3

    if-ge v2, v1, :cond_0

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 488
    :cond_0
    aget-object p0, p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAtParser()Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;
    .locals 1

    .line 259
    sget-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mHfAtParser:Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;

    return-object v0
.end method

.method public static getCLIPPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 396
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "getCLIPPhoneNumber"

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->log(Ljava/lang/String;)V

    .line 397
    :cond_0
    sget-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mClipPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getHfAtCmdResult()I
    .locals 1

    .line 316
    sget v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mHfAtCmdResult:I

    return v0
.end method

.method public static isHfConnected()Z
    .locals 1

    .line 1106
    sget-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mhfservice:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->isHfConnected()Z

    move-result v0

    return v0
.end method

.method public static isLocalDeviceSupportThreeWayCall()Z
    .locals 1

    .line 267
    sget v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mLocalBrsf:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isRemoteDeviceSupportThreeWayCall()Z
    .locals 2

    .line 288
    sget v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mRemoteBrsf:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isRemoteDeviceSupportVoiceRecognition()Z
    .locals 1

    .line 309
    sget v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mRemoteBrsf:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "BluetoothHfAtHandler"

    .line 1110
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parserUseableString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 970
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 971
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 973
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 977
    :cond_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private parsingCIND(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 419
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 420
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    const/4 v5, 0x1

    if-ne v3, v4, :cond_a

    add-int/lit8 v1, v1, 0x1

    .line 422
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 427
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    move v4, v0

    .line 429
    :goto_1
    sget-object v6, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->CIND_Resp_Str:[Ljava/lang/String;

    array-length v7, v6

    if-ge v4, v7, :cond_9

    .line 430
    aget-object v6, v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez v4, :cond_1

    .line 433
    iput v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mServiceCIEVIndex:I

    goto :goto_2

    :cond_1
    if-ne v4, v5, :cond_2

    .line 435
    iput v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallsetupCIEVIndex:I

    goto :goto_2

    :cond_2
    const/4 v1, 0x2

    if-ne v4, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    if-ne v4, v1, :cond_4

    .line 440
    iput v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallheldCIEVIndex:I

    goto :goto_2

    :cond_4
    const/4 v1, 0x4

    if-ne v4, v1, :cond_5

    .line 442
    iput v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallCIEVIndex:I

    goto :goto_2

    :cond_5
    const/4 v1, 0x5

    if-ne v4, v1, :cond_6

    .line 444
    iput v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mSignalCIEVIndex:I

    goto :goto_2

    :cond_6
    const/4 v1, 0x6

    if-ne v4, v1, :cond_7

    .line 446
    iput v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mRoamCIEVIndex:I

    goto :goto_2

    :cond_7
    const/4 v1, 0x7

    if-ne v4, v1, :cond_9

    .line 448
    iput v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mBattchgCIEVIndex:I

    goto :goto_2

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    :goto_2
    move v1, v3

    :cond_a
    add-int/2addr v1, v5

    goto :goto_0

    .line 457
    :cond_b
    :goto_3
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->DEBUG:Z

    if-eqz p1, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parsingCIND: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mServiceCIEVIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallCIEVIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallsetupCIEVIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallheldCIEVIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mSignalCIEVIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mRoamCIEVIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mBattchgCIEVIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothHfAtHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method public static sendURC(Ljava/lang/String;)Z
    .locals 1

    .line 1102
    sget-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mhfservice:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-virtual {v0, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendHfURC(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private updatePhoneCallStatus(II)V
    .locals 3

    .line 989
    sget v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallsetup:I

    const/4 v1, 0x0

    if-eq p2, v0, :cond_7

    .line 990
    sput p2, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallsetup:I

    const-string v0, ""

    if-eqz p2, :cond_4

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 1011
    sget-boolean p2, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->DEBUG:Z

    if-eqz p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ATCMD] Callsetup value is invalid!!!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallsetup:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1008
    :cond_0
    sget-boolean p2, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->DEBUG:Z

    if-eqz p2, :cond_6

    const-string p2, "[ATCMD] Callsetup =3 alert incoming call"

    invoke-static {p2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1005
    :cond_1
    sget-boolean p2, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->DEBUG:Z

    if-eqz p2, :cond_6

    const-string p2, "[ATCMD] Callsetup =2 outgoing call"

    invoke-static {p2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1001
    :cond_2
    sget-boolean p2, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->DEBUG:Z

    if-eqz p2, :cond_3

    const-string p2, "[ATCMD] Callsetup =1 incomming call"

    invoke-static {p2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->log(Ljava/lang/String;)V

    .line 1002
    :cond_3
    sput-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mClipPhoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 993
    :cond_4
    sget-boolean p2, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->DEBUG:Z

    if-eqz p2, :cond_5

    const-string p2, "[ATCMD] Callsetup =0 stop alerting"

    invoke-static {p2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->log(Ljava/lang/String;)V

    .line 994
    :cond_5
    sput-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mClipPhoneNumber:Ljava/lang/String;

    .line 995
    iget-boolean p2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->m_bIsPlayingRingTone:Z

    if-eqz p2, :cond_6

    .line 996
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->HfStopRingTone()Z

    .line 997
    iput-boolean v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->m_bIsPlayingRingTone:Z

    .line 1015
    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallsetup_intent:Landroid/content/Intent;

    sget v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallsetup:I

    const-string v2, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_CALLSETUP_STATE"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1016
    iget-object p2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallsetup_intent:Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1020
    :cond_7
    sget p2, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCall:I

    if-eq p1, p2, :cond_a

    .line 1021
    sput p1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCall:I

    .line 1022
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->DEBUG:Z

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[ATCMD] Call="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCall:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "stop alerting"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->log(Ljava/lang/String;)V

    .line 1023
    :cond_8
    iget-boolean p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->m_bIsPlayingRingTone:Z

    if-eqz p1, :cond_9

    .line 1024
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->HfStopRingTone()Z

    .line 1025
    iput-boolean v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->m_bIsPlayingRingTone:Z

    .line 1027
    :cond_9
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCall_intent:Landroid/content/Intent;

    sget p2, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCall:I

    const-string v0, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_CALL_STATE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1028
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCall_intent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_a
    return-void
.end method

.method public static waitforHfCmdResult(I)I
    .locals 5

    const/4 v0, 0x2

    move v1, v0

    :cond_0
    const/4 v2, 0x1

    if-le p0, v2, :cond_1

    const-wide/16 v3, 0x64

    .line 1081
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1084
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    add-int/lit8 p0, p0, -0x1

    .line 1087
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->getHfAtCmdResult()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1089
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->clearHfAtCmdResult()V

    :cond_1
    if-le p0, v2, :cond_2

    return v1

    .line 1096
    :cond_2
    sget-boolean p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "hf cmd no response"

    invoke-static {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->log(Ljava/lang/String;)V

    :cond_3
    return v0
.end method


# virtual methods
.method public HfAtCmdDialNumber(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->sendURC(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method protected initializeAtParser()V
    .locals 1

    .line 253
    new-instance v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;

    invoke-direct {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;-><init>()V

    sput-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mHfAtParser:Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;

    return-void
.end method

.method public initializeHfAtParser()V
    .locals 3

    .line 499
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Registering Handsfree AT commands"

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->log(Ljava/lang/String;)V

    .line 500
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->getAtParser()Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;

    move-result-object v0

    .line 502
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$1;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$1;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V

    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 511
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$2;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$2;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V

    const-string v2, "ERROR"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 520
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$3;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$3;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V

    const-string v2, "NO CARRIER"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 532
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$4;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$4;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V

    const-string v2, "RING"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 549
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$5;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$5;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V

    const-string v2, "+CIEV"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 568
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$6;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$6;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V

    const-string v2, "+BRSF"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 595
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$7;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$7;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V

    const-string v2, "+BSIR"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 645
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$8;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$8;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V

    const-string v2, "+CCWA"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 654
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$9;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$9;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V

    const-string v2, "+CMEE"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 664
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V

    const-string v2, "+CIND"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 735
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$11;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$11;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V

    const-string v2, "+CGMM"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 759
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$12;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$12;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V

    const-string v2, "+BINP"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 769
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$13;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$13;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V

    const-string v2, "+VTS"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 801
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$14;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$14;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V

    const-string v2, "+CHLD"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 811
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$15;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$15;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V

    const-string v2, "+BTRH"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 821
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$16;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$16;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V

    const-string v2, "+CLIP"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 855
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$17;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$17;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V

    const-string v2, "+VGM"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 871
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$18;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$18;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V

    const-string v2, "+VGS"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 886
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$19;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$19;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V

    const-string v2, "+CLCC"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    return-void
.end method

.method public isRemoteDeviceSupportECNR()Z
    .locals 1

    .line 274
    sget v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mRemoteBrsf:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRemoteDeviceSupportEnhanceCallControl()Z
    .locals 1

    .line 302
    sget v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mRemoteBrsf:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRemoteDeviceSupportEnhanceCallStatus()Z
    .locals 1

    .line 295
    sget v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mRemoteBrsf:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRemoteDeviceSupportInBandRing()Z
    .locals 1

    .line 281
    sget v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mRemoteBrsf:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized resetAtState()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 263
    :try_start_0
    sput v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mRemoteBrsf:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
