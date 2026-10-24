.class public Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;
.super Ljava/lang/Object;
.source "BluetoothPbapClientPath.java"


# static fields
.field private static DEBUG:Z = false

.field public static final NUM_OF_PBMGR_PATH:I = 0xe

.field public static final PBAP_BACK_FOLDER:I = 0x1

.field public static final PBAP_CCH_NAME:Ljava/lang/String; = "cch"

.field public static final PBAP_FORWARD_FOLDER:I = 0x0

.field public static final PBAP_ICH_NAME:Ljava/lang/String; = "ich"

.field public static final PBAP_MCH_NAME:Ljava/lang/String; = "mch"

.field public static final PBAP_ME_NAME:Ljava/lang/String; = "telecom"

.field public static final PBAP_OCH_NAME:Ljava/lang/String; = "och"

.field public static final PBAP_PB_NAME:Ljava/lang/String; = "pb"

.field public static final PBAP_ROOT_FOLDER:I = 0x2

.field public static final PBAP_ROOT_NAME:Ljava/lang/String; = ""

.field public static final PBAP_SIM1_ROOT_NAME:Ljava/lang/String; = "SIM1"

.field public static final PBAP_SIM_NAME:Ljava/lang/String; = "telecom"

.field public static final PBMGR_COMBINED_CALLED_HISTORY:I = 0x1000

.field public static final PBMGR_INCOMING_CALLS_HISTORY:I = 0x40

.field public static final PBMGR_MISSED_CALLS_HISTORY:I = 0x400

.field public static final PBMGR_OUTGOING_CALLS_HISTORY:I = 0x100

.field public static final PBMGR_PB_ROOT:I = 0x2

.field public static final PBMGR_PHONEBOOK:I = 0x10

.field public static final PBMGR_ROOT:I = 0x1

.field public static final PBMGR_SIM_COMBINED_CALLED_HISTORY:I = 0x2000

.field public static final PBMGR_SIM_INCOMING_CALLS_HISTORY:I = 0x80

.field public static final PBMGR_SIM_MISSED_CALLS_HISTORY:I = 0x800

.field public static final PBMGR_SIM_OUTGONING_CALLS_HISTORY:I = 0x200

.field public static final PBMGR_SIM_PHONEBOOK:I = 0x20

.field public static final PBMGR_SIM_ROOT:I = 0x8

.field public static final PBMGR_SIM_TREE:I = 0x4

.field public static final PBMGR_UNKNOW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapClientPath"


# instance fields
.field private mCurLevel:I

.field private mCurrentPath:I

.field private mPathLevel:I

.field private mPullPBlist:Z

.field private mSetpath:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugPB:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mSetpath:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mPullPBlist:Z

    .line 106
    iput v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mCurrentPath:I

    const/4 v0, -0x1

    .line 107
    iput v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mPathLevel:I

    .line 108
    iput v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mCurLevel:I

    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "BluetoothPbapClientPath"

    .line 268
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1

    .line 265
    sget-boolean v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothPbapClientPath"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getAbsolutePath(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_9

    const/16 v0, 0x20

    if-eq p1, v0, :cond_8

    const/16 v0, 0x40

    if-eq p1, v0, :cond_7

    const/16 v0, 0x80

    if-eq p1, v0, :cond_6

    const/16 v0, 0x100

    if-eq p1, v0, :cond_5

    const/16 v0, 0x200

    if-eq p1, v0, :cond_4

    const/16 v0, 0x400

    if-eq p1, v0, :cond_3

    const/16 v0, 0x800

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_0

    const-string p1, "Unknown path operation"

    .line 256
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->errorLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "SIM1/telecom/cch.vcf"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "telecom/cch.vcf"

    goto :goto_0

    :cond_2
    const-string p1, "SIM1/telecom/mch.vcf"

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "telecom/mch.vcf"

    goto :goto_0

    :cond_4
    const-string p1, "SIM1/telecom/och.vcf"

    goto :goto_0

    :cond_5
    const-string/jumbo p1, "telecom/och.vcf"

    goto :goto_0

    :cond_6
    const-string p1, "SIM1/telecom/ich.vcf"

    goto :goto_0

    :cond_7
    const-string/jumbo p1, "telecom/ich.vcf"

    goto :goto_0

    :cond_8
    const-string p1, "SIM1/telecom/pb.vcf"

    goto :goto_0

    :cond_9
    const-string/jumbo p1, "telecom/pb.vcf"

    :goto_0
    return-object p1
.end method

.method public getCurIndex()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mCurLevel:I

    return v0
.end method

.method public getCurrentPath()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mCurrentPath:I

    return v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 2

    .line 124
    iget v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mPathLevel:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mSetpath:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getIndexPath(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 131
    iget v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mPathLevel:I

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, "getCurPath() index error!"

    .line 132
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->errorLog(Ljava/lang/String;)V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mSetpath:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPathLevel(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 117
    iget p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mPathLevel:I

    return p1

    .line 119
    :cond_0
    iget p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mPathLevel:I

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public increaseIndex()V
    .locals 1

    .line 142
    iget v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mCurLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mCurLevel:I

    return-void
.end method

.method public setPath(I)V
    .locals 10

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] setPath("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->printLog(Ljava/lang/String;)V

    .line 147
    iput p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mCurrentPath:I

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mCurLevel:I

    const/16 v1, 0x10

    const-string v2, "pb"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string/jumbo v5, "telecom"

    const/4 v6, 0x1

    const-string v7, ""

    if-eq p1, v1, :cond_9

    const/16 v1, 0x20

    const/4 v8, 0x4

    const-string v9, "SIM1"

    if-eq p1, v1, :cond_8

    const/16 v1, 0x40

    const-string v2, "ich"

    if-eq p1, v1, :cond_7

    const/16 v1, 0x80

    if-eq p1, v1, :cond_6

    const/16 v1, 0x100

    const-string v2, "och"

    if-eq p1, v1, :cond_5

    const/16 v1, 0x200

    if-eq p1, v1, :cond_4

    const/16 v1, 0x400

    const-string v2, "mch"

    if-eq p1, v1, :cond_3

    const/16 v1, 0x800

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1000

    const-string v2, "cch"

    if-eq p1, v1, :cond_1

    const/16 v1, 0x2000

    if-eq p1, v1, :cond_0

    const/4 p1, -0x1

    .line 216
    iput p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mPathLevel:I

    const-string p1, "Unknown set path operation"

    .line 217
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mSetpath:[Ljava/lang/String;

    aput-object v7, p1, v0

    .line 210
    aput-object v9, p1, v6

    .line 211
    aput-object v5, p1, v4

    .line 212
    aput-object v2, p1, v3

    .line 213
    iput v8, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mPathLevel:I

    goto :goto_0

    .line 175
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mSetpath:[Ljava/lang/String;

    aput-object v7, p1, v0

    .line 176
    aput-object v5, p1, v6

    .line 177
    aput-object v2, p1, v4

    .line 178
    iput v3, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mPathLevel:I

    goto :goto_0

    .line 202
    :cond_2
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mSetpath:[Ljava/lang/String;

    aput-object v7, p1, v0

    .line 203
    aput-object v9, p1, v6

    .line 204
    aput-object v5, p1, v4

    .line 205
    aput-object v2, p1, v3

    .line 206
    iput v8, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mPathLevel:I

    goto :goto_0

    .line 169
    :cond_3
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mSetpath:[Ljava/lang/String;

    aput-object v7, p1, v0

    .line 170
    aput-object v5, p1, v6

    .line 171
    aput-object v2, p1, v4

    .line 172
    iput v3, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mPathLevel:I

    goto :goto_0

    .line 195
    :cond_4
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mSetpath:[Ljava/lang/String;

    aput-object v7, p1, v0

    .line 196
    aput-object v9, p1, v6

    .line 197
    aput-object v5, p1, v4

    .line 198
    aput-object v2, p1, v3

    .line 199
    iput v8, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mPathLevel:I

    goto :goto_0

    .line 163
    :cond_5
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mSetpath:[Ljava/lang/String;

    aput-object v7, p1, v0

    .line 164
    aput-object v5, p1, v6

    .line 165
    aput-object v2, p1, v4

    .line 166
    iput v3, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mPathLevel:I

    goto :goto_0

    .line 188
    :cond_6
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mSetpath:[Ljava/lang/String;

    aput-object v7, p1, v0

    .line 189
    aput-object v9, p1, v6

    .line 190
    aput-object v5, p1, v4

    .line 191
    aput-object v2, p1, v3

    .line 192
    iput v8, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mPathLevel:I

    goto :goto_0

    .line 157
    :cond_7
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mSetpath:[Ljava/lang/String;

    aput-object v7, p1, v0

    .line 158
    aput-object v5, p1, v6

    .line 159
    aput-object v2, p1, v4

    .line 160
    iput v3, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mPathLevel:I

    goto :goto_0

    .line 181
    :cond_8
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mSetpath:[Ljava/lang/String;

    aput-object v7, p1, v0

    .line 182
    aput-object v9, p1, v6

    .line 183
    aput-object v5, p1, v4

    .line 184
    aput-object v2, p1, v3

    .line 185
    iput v8, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mPathLevel:I

    goto :goto_0

    .line 151
    :cond_9
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mSetpath:[Ljava/lang/String;

    aput-object v7, p1, v0

    .line 152
    aput-object v5, p1, v6

    .line 153
    aput-object v2, p1, v4

    .line 154
    iput v3, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->mPathLevel:I

    :goto_0
    return-void
.end method
