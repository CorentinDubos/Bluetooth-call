.class public final Lcom/hzbhd/bluetooth/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.hzbhd.bluetooth"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final UI_ARRAYS:[Ljava/lang/String;

.field public static final UI_ARRAYS_PORT:[Ljava/lang/String;

.field public static final UI_TYPE:Ljava/lang/String; = "N01-KC1"

.field public static final VERSION_CODE:I = 0x7877da67

.field public static final VERSION_NAME:Ljava/lang/String; = "2.0.0 - 20211206-1549"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "01"

    const-string v1, "49"

    const-string v2, "69"

    const-string v3, "A1"

    const-string v4, "0G"

    const-string v5, "c3"

    const-string v6, "e3"

    .line 13
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/bluetooth/BuildConfig;->UI_ARRAYS:[Ljava/lang/String;

    const-string v0, "01"

    .line 14
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/bluetooth/BuildConfig;->UI_ARRAYS_PORT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
