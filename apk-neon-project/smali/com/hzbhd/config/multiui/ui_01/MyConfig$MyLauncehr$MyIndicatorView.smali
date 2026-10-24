.class public final Lcom/hzbhd/config/multiui/ui_01/MyConfig$MyLauncehr$MyIndicatorView;
.super Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_01/MyConfig$MyLauncehr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyIndicatorView"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_01/MyConfig$MyLauncehr$MyIndicatorView;",
        "Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;",
        "()V",
        "getAppMargin",
        "",
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

    .line 53
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$IndicatorView;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppMargin()[F
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 54
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
    .end array-data
.end method
