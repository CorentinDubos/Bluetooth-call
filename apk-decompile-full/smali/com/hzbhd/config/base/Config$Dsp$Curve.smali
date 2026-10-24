.class public Lcom/hzbhd/config/base/Config$Dsp$Curve;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/base/Config$Dsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Curve"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Config.kt\ncom/hzbhd/config/base/Config$Dsp$Curve\n*L\n1#1,1133:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0013\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008H\u0016\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u0004H\u0016J\u0013\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008H\u0016\u00a2\u0006\u0002\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$Dsp$Curve;",
        "",
        "()V",
        "getCurveLayout",
        "",
        "getDspBandNum",
        "",
        "getRuleColor",
        "",
        "()[Ljava/lang/Integer;",
        "getSeekLayout",
        "getSelectBand",
        "Config_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurveLayout()Ljava/lang/String;
    .locals 1

    const-string v0, "__01__dsp__curve"

    return-object v0
.end method

.method public getDspBandNum()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public getRuleColor()[Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, -0xe4df85

    .line 1000
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, -0x5065f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, -0x35dcd5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getSeekLayout()Ljava/lang/String;
    .locals 1

    const-string v0, "__01__dsp__curve_seekbar"

    return-object v0
.end method

.method public getSelectBand()[Ljava/lang/Integer;
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x3

    .line 991
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method
