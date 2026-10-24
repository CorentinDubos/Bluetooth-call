.class public Lcom/hzbhd/config/base/Config$Launcher$BackgroundView;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/base/Config$Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundView"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$Launcher$BackgroundView;",
        "",
        "()V",
        "getDefaultHotSeatIconArray",
        "Ljava/util/ArrayList;",
        "Lcom/hzbhd/config/lib/launcher/ComponentPosition;",
        "getLayout",
        "",
        "isAlwaysShow",
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

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultHotSeatIconArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/hzbhd/config/lib/launcher/ComponentPosition;",
            ">;"
        }
    .end annotation

    .line 419
    new-instance v0, Lcom/hzbhd/config/base/Config$Launcher$BackgroundView$getDefaultHotSeatIconArray$1;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$Launcher$BackgroundView$getDefaultHotSeatIconArray$1;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLayout()Ljava/lang/String;
    .locals 1

    const-string v0, "__01__background_layout"

    return-object v0
.end method

.method public isAlwaysShow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
