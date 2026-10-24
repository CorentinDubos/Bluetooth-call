.class public Lcom/autochips/bluetooth/hf/BluetoothHfUtility;
.super Ljava/lang/Object;
.source "BluetoothHfUtility.java"


# static fields
.field public static final ACTION_CALL_STATE_CHANGE:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfUtility.action.callStateChange"

.field private static final COMPLEMENT_3WAY_CALLING:Z = false

.field private static DEBUG:Z = false

.field public static final EXTRA_CALL_STATE:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfUtility.extra.callState"

.field public static final HFP_CONNECT_STATE_CONNECTED:I = 0x1

.field public static final HFP_CONNECT_STATE_IDLE:I = 0x0

.field private static final HFP_UTILITY_CALLHELD_VALUE_BOTH_ACTIVE_HOLD:I = 0x1

.field private static final HFP_UTILITY_CALLHELD_VALUE_NO_HOLD:I = 0x0

.field private static final HFP_UTILITY_CALLHELD_VALUE_ON_HOLD:I = 0x2

.field private static final HFP_UTILITY_CALLSETUP_VALUE_ALERTING:I = 0x3

.field private static final HFP_UTILITY_CALLSETUP_VALUE_INCOMING:I = 0x1

.field private static final HFP_UTILITY_CALLSETUP_VALUE_NOT_SETUP:I = 0x0

.field private static final HFP_UTILITY_CALLSETUP_VALUE_OUTGOING:I = 0x2

.field public static final HFP_UTILITY_CALLSTATE_IDLE:I = 0x1

.field public static final HFP_UTILITY_CALLSTATE_INCOMING:I = 0x2

.field public static final HFP_UTILITY_CALLSTATE_OUTGOING:I = 0x3

.field public static final HFP_UTILITY_CALLSTATE_SPEAKING:I = 0x4

.field private static final HFP_UTILITY_CALL_VALUE_CALL_ACTIVE:I = 0x1

.field private static final HFP_UTILITY_CALL_VALUE_NO_CALL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothHfUtility"

.field private static mCallingNumber:Ljava/lang/String;


# instance fields
.field private mBattchgValue:I

.field private mCallState:I

.field private mCallValue:I

.field private mCallheldValue:I

.field private mCallsetupValue:I

.field private mContext:Landroid/content/Context;

.field private mHFConnectState:I

.field private mHfAdapter:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

.field private mRoamValue:I

.field private mServiceValue:I

.field private mSignalValue:I

.field private mTimerBroadcastCallState:Ljava/util/Timer;

.field private mTimerQueryCallingNumber:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugHF:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    const-string v0, ""

    .line 81
    sput-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallingNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;)V
    .locals 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mContext:Landroid/content/Context;

    .line 69
    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mHfAdapter:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    const/4 v1, 0x0

    .line 71
    iput v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mServiceValue:I

    .line 72
    iput v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallValue:I

    .line 73
    iput v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallsetupValue:I

    .line 74
    iput v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallheldValue:I

    .line 75
    iput v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mSignalValue:I

    .line 76
    iput v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mRoamValue:I

    .line 77
    iput v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mBattchgValue:I

    const/4 v2, 0x1

    .line 79
    iput v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallState:I

    .line 83
    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerBroadcastCallState:Ljava/util/Timer;

    .line 84
    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerQueryCallingNumber:Ljava/util/Timer;

    .line 379
    iput v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mHFConnectState:I

    .line 95
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    const-string v1, "BluetoothHfUtility"

    if-eqz v0, :cond_0

    const-string v0, "create instance"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mContext:Landroid/content/Context;

    if-nez p1, :cond_1

    const-string p1, "---------context is null------------"

    .line 97
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    iput-object p2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mHfAdapter:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    .line 99
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mContext:Landroid/content/Context;

    if-nez p1, :cond_2

    const-string p1, "---------hfAdapter is null------------"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->reset()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 29
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;)Ljava/util/Timer;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerBroadcastCallState:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerBroadcastCallState:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallState:I

    return p0
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;)Ljava/util/Timer;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerQueryCallingNumber:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$402(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerQueryCallingNumber:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mHfAdapter:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    return-object p0
.end method

.method private judgeCallState(III)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    if-eq p2, v1, :cond_4

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x4

    :cond_4
    :goto_1
    return v0
.end method

.method private onCallStateChange(I)V
    .locals 4

    .line 383
    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x64

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    const-string v3, "BluetoothHfUtility"

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call state change error. invalid state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 398
    :cond_1
    sget-object v2, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallingNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 399
    iget v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mHFConnectState:I

    if-ne v1, v2, :cond_2

    const-wide/16 v0, 0x32

    .line 400
    invoke-direct {p0, v0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->scheduleGetCallList(J)V

    const/16 v0, 0x258

    goto :goto_0

    .line 403
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call state change. HF not connected. now state is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mHFConnectState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v1, ""

    .line 392
    sput-object v1, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallingNumber:Ljava/lang/String;

    :cond_4
    :goto_0
    int-to-long v0, v0

    .line 414
    invoke-direct {p0, v0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->scheduleBroadcastCallState(J)V

    .line 416
    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallState:I

    return-void
.end method

.method private declared-synchronized scheduleBroadcastCallState(J)V
    .locals 3

    monitor-enter p0

    .line 295
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleBroadcastCallState, delay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerBroadcastCallState:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 298
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "BluetoothHfUtility"

    const-string/jumbo v1, "scheduleBroadcastCallState, new timer."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :cond_1
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "BluetoothHfUtility"

    const-string/jumbo v1, "scheduleBroadcastCallState, cancelling previous timer."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerBroadcastCallState:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 302
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerBroadcastCallState:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 303
    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerBroadcastCallState:Ljava/util/Timer;

    .line 305
    :cond_3
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerBroadcastCallState:Ljava/util/Timer;

    .line 308
    new-instance v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility$1;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;)V

    .line 324
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerBroadcastCallState:Ljava/util/Timer;

    invoke-virtual {v1, v0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized scheduleGetCallList(J)V
    .locals 3

    monitor-enter p0

    .line 328
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleGetCallList, delay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerQueryCallingNumber:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 331
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "BluetoothHfUtility"

    const-string/jumbo v1, "scheduleGetCallList, new timer."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :cond_1
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "BluetoothHfUtility"

    const-string/jumbo v1, "scheduleGetCallList, cancelling previous timer."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerQueryCallingNumber:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 335
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerQueryCallingNumber:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerQueryCallingNumber:Ljava/util/Timer;

    .line 338
    :cond_3
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerQueryCallingNumber:Ljava/util/Timer;

    .line 341
    new-instance v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility$2;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility$2;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;)V

    .line 354
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerQueryCallingNumber:Ljava/util/Timer;

    invoke-virtual {v1, v0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized getCallState()I
    .locals 1

    monitor-enter p0

    .line 148
    :try_start_0
    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCallingNumber()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 166
    :try_start_0
    sget-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallingNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset()V
    .locals 4

    .line 108
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    const-string v1, "BluetoothHfUtility"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "reset"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerBroadcastCallState:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 112
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerBroadcastCallState:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_1
    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerBroadcastCallState:Ljava/util/Timer;

    .line 116
    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerQueryCallingNumber:Ljava/util/Timer;

    if-eqz v2, :cond_2

    .line 117
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 118
    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerQueryCallingNumber:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 120
    :cond_2
    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mTimerQueryCallingNumber:Ljava/util/Timer;

    .line 122
    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    .line 123
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "send call idle due to reset operation."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.hf.BluetoothHfUtility.action.callStateChange"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.autochips.bluetooth.hf.BluetoothHfUtility.extra.callState"

    .line 125
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    iget-object v3, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v0, "---------context is null------------"

    .line 127
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mServiceValue:I

    .line 130
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallValue:I

    .line 131
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallsetupValue:I

    .line 132
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallheldValue:I

    .line 133
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mSignalValue:I

    .line 134
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mRoamValue:I

    .line 135
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mBattchgValue:I

    .line 136
    iput v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallState:I

    const-string v1, ""

    .line 138
    sput-object v1, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallingNumber:Ljava/lang/String;

    .line 139
    iput v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mHFConnectState:I

    return-void
.end method

.method public declared-synchronized setCallingNumber(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 177
    :try_start_0
    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 178
    :cond_0
    :try_start_1
    sput-object p1, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallingNumber:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateCallRelatedValue(III)V
    .locals 3

    monitor-enter p0

    .line 191
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfUtility"

    const-string/jumbo v1, "updateCallRelatedValue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothHfUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before update: call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",callsetup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallsetupValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",callheld="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallheldValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_1
    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallValue:I

    if-ne v0, p1, :cond_3

    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallsetupValue:I

    if-ne v0, p2, :cond_3

    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallheldValue:I

    if-ne v0, p3, :cond_3

    .line 196
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "BluetoothHfUtility"

    const-string p2, "identical values"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_2
    monitor-exit p0

    return-void

    .line 200
    :cond_3
    :try_start_1
    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallValue:I

    .line 201
    iput p2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallsetupValue:I

    .line 202
    iput p3, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallheldValue:I

    .line 204
    invoke-direct {p0, p1, p2, p3}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->judgeCallState(III)I

    move-result p1

    .line 205
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->onCallStateChange(I)V

    .line 207
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "BluetoothHfUtility"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "after update: call="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallValue:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",callsetup="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallsetupValue:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",callheld="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallheldValue:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateCallValue(I)V
    .locals 3

    monitor-enter p0

    .line 218
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfUtility"

    const-string/jumbo v1, "updateCallValue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothHfUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before update: call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",callsetup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallsetupValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",callheld="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallheldValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_1
    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallValue:I

    if-ne v0, p1, :cond_3

    .line 223
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "BluetoothHfUtility"

    const-string v0, "identical value"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_2
    monitor-exit p0

    return-void

    .line 227
    :cond_3
    :try_start_1
    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallValue:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    if-nez p1, :cond_4

    .line 229
    iget p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallheldValue:I

    if-nez p1, :cond_4

    goto :goto_0

    .line 234
    :cond_4
    iget p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallValue:I

    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallsetupValue:I

    iget v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallheldValue:I

    invoke-direct {p0, p1, v0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->judgeCallState(III)I

    move-result v0

    .line 237
    :goto_0
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->onCallStateChange(I)V

    .line 239
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz p1, :cond_5

    const-string p1, "BluetoothHfUtility"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after update: call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",callsetup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallsetupValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",callheld="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallheldValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateCallheldValue(I)V
    .locals 3

    monitor-enter p0

    .line 275
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfUtility"

    const-string/jumbo v1, "updateCallheldValue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothHfUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before update: call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",callsetup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallsetupValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",callheld="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallheldValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_1
    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallheldValue:I

    if-ne v0, p1, :cond_3

    .line 280
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "BluetoothHfUtility"

    const-string v0, "identical value"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :cond_2
    monitor-exit p0

    return-void

    .line 284
    :cond_3
    :try_start_1
    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallheldValue:I

    .line 286
    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallValue:I

    iget v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallsetupValue:I

    invoke-direct {p0, v0, v1, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->judgeCallState(III)I

    move-result p1

    .line 287
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->onCallStateChange(I)V

    .line 289
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "BluetoothHfUtility"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after update: call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",callsetup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallsetupValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",callheld="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallheldValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateCallsetupValue(I)V
    .locals 3

    monitor-enter p0

    .line 250
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfUtility"

    const-string/jumbo v1, "updateCallsetupValue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothHfUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before update: call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",callsetup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallsetupValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",callheld="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallheldValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_1
    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallsetupValue:I

    if-ne v0, p1, :cond_3

    .line 255
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "BluetoothHfUtility"

    const-string v0, "identical value"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :cond_2
    monitor-exit p0

    return-void

    .line 258
    :cond_3
    :try_start_1
    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallsetupValue:I

    .line 260
    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallValue:I

    iget v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallheldValue:I

    invoke-direct {p0, v0, p1, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->judgeCallState(III)I

    move-result p1

    .line 262
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->onCallStateChange(I)V

    .line 264
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "BluetoothHfUtility"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after update: call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",callsetup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallsetupValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",callheld="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallheldValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateHFConnectedState(I)V
    .locals 2

    .line 422
    iget v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mHFConnectState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HF connect state change error. invalid state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothHfUtility"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 428
    :cond_1
    sget-object v1, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallingNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mCallState:I

    if-eq v1, v0, :cond_2

    const-wide/16 v0, 0x32

    .line 429
    invoke-direct {p0, v0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->scheduleGetCallList(J)V

    const-wide/16 v0, 0x258

    .line 430
    invoke-direct {p0, v0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->scheduleBroadcastCallState(J)V

    .line 442
    :cond_2
    iput p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->mHFConnectState:I

    return-void
.end method
