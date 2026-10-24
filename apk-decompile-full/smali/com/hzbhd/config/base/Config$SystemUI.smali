.class public Lcom/hzbhd/config/base/Config$SystemUI;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/base/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemUI"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$SystemUI;",
        "",
        "()V",
        "leftTopDataClickStartAlarm",
        "",
        "getLeftTopDataClickStartAlarm",
        "()Z",
        "setLeftTopDataClickStartAlarm",
        "(Z)V",
        "quick_settings_tiles_default",
        "",
        "getQuick_settings_tiles_default",
        "()Ljava/lang/String;",
        "setQuick_settings_tiles_default",
        "(Ljava/lang/String;)V",
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

.field private quick_settings_tiles_default:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1056
    iput-boolean v0, p0, Lcom/hzbhd/config/base/Config$SystemUI;->leftTopDataClickStartAlarm:Z

    const-string v0, ""

    .line 1061
    iput-object v0, p0, Lcom/hzbhd/config/base/Config$SystemUI;->quick_settings_tiles_default:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLeftTopDataClickStartAlarm()Z
    .locals 1

    .line 1056
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$SystemUI;->leftTopDataClickStartAlarm:Z

    return v0
.end method

.method public getQuick_settings_tiles_default()Ljava/lang/String;
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$SystemUI;->quick_settings_tiles_default:Ljava/lang/String;

    return-object v0
.end method

.method public setLeftTopDataClickStartAlarm(Z)V
    .locals 0

    .line 1056
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$SystemUI;->leftTopDataClickStartAlarm:Z

    return-void
.end method

.method public setQuick_settings_tiles_default(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1061
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$SystemUI;->quick_settings_tiles_default:Ljava/lang/String;

    return-void
.end method
