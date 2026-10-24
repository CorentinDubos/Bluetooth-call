.class public final Lcom/hzbhd/config/multiui/ui_m7/MyConfig$MyCanBusInfo;
.super Lcom/hzbhd/config/base/Config$CanBusInfo;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_m7/MyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyCanBusInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0003\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_m7/MyConfig$MyCanBusInfo;",
        "Lcom/hzbhd/config/base/Config$CanBusInfo;",
        "()V",
        "isShowVideoInputType1080p",
        "",
        "()Z",
        "setShowVideoInputType1080p",
        "(Z)V",
        "Config_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private isShowVideoInputType1080p:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$CanBusInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public isShowVideoInputType1080p()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_m7/MyConfig$MyCanBusInfo;->isShowVideoInputType1080p:Z

    return v0
.end method

.method public setShowVideoInputType1080p(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_m7/MyConfig$MyCanBusInfo;->isShowVideoInputType1080p:Z

    return-void
.end method
