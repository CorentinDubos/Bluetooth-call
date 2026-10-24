.class public final Lcom/hzbhd/config/multiui/ui_c6/MyConfig$MyCanBusInfo;
.super Lcom/hzbhd/config/base/Config$CanBusInfo;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_c6/MyConfig;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_c6/MyConfig$MyCanBusInfo;",
        "Lcom/hzbhd/config/base/Config$CanBusInfo;",
        "()V",
        "windLvWhitSystemLanguage",
        "",
        "getWindLvWhitSystemLanguage",
        "()Z",
        "setWindLvWhitSystemLanguage",
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
.field private windLvWhitSystemLanguage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$CanBusInfo;-><init>()V

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_c6/MyConfig$MyCanBusInfo;->windLvWhitSystemLanguage:Z

    return-void
.end method


# virtual methods
.method public getWindLvWhitSystemLanguage()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/hzbhd/config/multiui/ui_c6/MyConfig$MyCanBusInfo;->windLvWhitSystemLanguage:Z

    return v0
.end method

.method public setWindLvWhitSystemLanguage(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/hzbhd/config/multiui/ui_c6/MyConfig$MyCanBusInfo;->windLvWhitSystemLanguage:Z

    return-void
.end method
