.class public final Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp$MyCurve;
.super Lcom/hzbhd/config/base/Config$Dsp$Curve;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyCurve"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMyConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyConfig.kt\ncom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp$MyCurve\n*L\n1#1,147:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0013\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\t\u001a\u00020\u0004H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp$MyCurve;",
        "Lcom/hzbhd/config/base/Config$Dsp$Curve;",
        "()V",
        "getCurveLayout",
        "",
        "getRuleColor",
        "",
        "",
        "()[Ljava/lang/Integer;",
        "getSeekLayout",
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

    .line 119
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Dsp$Curve;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurveLayout()Ljava/lang/String;
    .locals 1

    const-string v0, "__e3__dsp__curve"

    return-object v0
.end method

.method public getRuleColor()[Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, -0xe4df85

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, -0xe59565

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, -0xf062b8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getSeekLayout()Ljava/lang/String;
    .locals 1

    const-string v0, "__e3__dsp__curve_seekbar"

    return-object v0
.end method
