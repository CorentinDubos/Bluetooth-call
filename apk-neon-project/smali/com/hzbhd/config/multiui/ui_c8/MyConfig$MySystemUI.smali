.class public final Lcom/hzbhd/config/multiui/ui_c8/MyConfig$MySystemUI;
.super Lcom/hzbhd/config/base/Config$SystemUI;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_c8/MyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MySystemUI"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_c8/MyConfig$MySystemUI;",
        "Lcom/hzbhd/config/base/Config$SystemUI;",
        "()V",
        "leftTopDataClickStartAlarm",
        "",
        "getLeftTopDataClickStartAlarm",
        "()Z",
        "setLeftTopDataClickStartAlarm",
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
.field private leftTopDataClickStartAlarm:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$SystemUI;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeftTopDataClickStartAlarm()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_c8/MyConfig$MySystemUI;->leftTopDataClickStartAlarm:Z

    return v0
.end method

.method public setLeftTopDataClickStartAlarm(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_c8/MyConfig$MySystemUI;->leftTopDataClickStartAlarm:Z

    return-void
.end method
