.class public Lcom/autochips/cbmctx/CBMCtx;
.super Ljava/lang/Object;
.source "CBMCtx.java"


# static fields
.field public static final E_FAIL:I = -0x1

.field public static final SRC_AVIN_A:I = 0x9

.field public static final SRC_AVIN_AV:I = 0xa

.field public static final SRC_AVIN_A_RDS:I = 0xf

.field public static final SRC_AVIN_V:I = 0x8

.field public static final SRC_BACKCAR:I = 0x1

.field public static final SRC_BT_MUSIC:I = 0x3

.field public static final SRC_BT_PHONE:I = 0x2

.field public static final SRC_DIGITAL:I = 0xb

.field public static final SRC_DVD:I = 0x7

.field public static final SRC_HDMI_MHL:I = 0xd

.field public static final SRC_IPOD:I = 0xe

.field public static final SRC_MM_A:I = 0x5

.field public static final SRC_MM_AV:I = 0x6

.field public static final SRC_MM_V:I = 0x4

.field public static final SRC_YPBPR_VGA:I = 0xc

.field public static final S_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CBMCtx"


# instance fields
.field private mCbm:Landroid/cbm/CBManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/cbm/CBManager;

    invoke-direct {v0}, Landroid/cbm/CBManager;-><init>()V

    iput-object v0, p0, Lcom/autochips/cbmctx/CBMCtx;->mCbm:Landroid/cbm/CBManager;

    return-void
.end method


# virtual methods
.method public query(Landroid/os/Parcel;)I
    .locals 2

    const-string v0, "CBMCtx"

    const-string v1, "query"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/autochips/cbmctx/CBMCtx;->mCbm:Landroid/cbm/CBManager;

    invoke-virtual {v0, p1}, Landroid/cbm/CBManager;->query(Landroid/os/Parcel;)I

    move-result p1

    return p1
.end method
