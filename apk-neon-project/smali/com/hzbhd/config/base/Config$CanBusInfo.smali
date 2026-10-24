.class public Lcom/hzbhd/config/base/Config$CanBusInfo;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/base/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CanBusInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0003\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\u0005\"\u0004\u0008\t\u0010\u0007R\u001a\u0010\n\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0005\"\u0004\u0008\u000c\u0010\u0007R\u001a\u0010\r\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0005\"\u0004\u0008\u000f\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$CanBusInfo;",
        "",
        "()V",
        "isShowVideoInputType1080p",
        "",
        "()Z",
        "setShowVideoInputType1080p",
        "(Z)V",
        "isUseLearnAbleTrack",
        "setUseLearnAbleTrack",
        "wakeUpTheVoice",
        "getWakeUpTheVoice",
        "setWakeUpTheVoice",
        "windLvWhitSystemLanguage",
        "getWindLvWhitSystemLanguage",
        "setWindLvWhitSystemLanguage",
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

.field private isUseLearnAbleTrack:Z

.field private wakeUpTheVoice:Z

.field private windLvWhitSystemLanguage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1068
    iput-boolean v0, p0, Lcom/hzbhd/config/base/Config$CanBusInfo;->isUseLearnAbleTrack:Z

    .line 1078
    iput-boolean v0, p0, Lcom/hzbhd/config/base/Config$CanBusInfo;->isShowVideoInputType1080p:Z

    return-void
.end method


# virtual methods
.method public getWakeUpTheVoice()Z
    .locals 1

    .line 1083
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$CanBusInfo;->wakeUpTheVoice:Z

    return v0
.end method

.method public getWindLvWhitSystemLanguage()Z
    .locals 1

    .line 1073
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$CanBusInfo;->windLvWhitSystemLanguage:Z

    return v0
.end method

.method public isShowVideoInputType1080p()Z
    .locals 1

    .line 1078
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$CanBusInfo;->isShowVideoInputType1080p:Z

    return v0
.end method

.method public isUseLearnAbleTrack()Z
    .locals 1

    .line 1068
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$CanBusInfo;->isUseLearnAbleTrack:Z

    return v0
.end method

.method public setShowVideoInputType1080p(Z)V
    .locals 0

    .line 1078
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$CanBusInfo;->isShowVideoInputType1080p:Z

    return-void
.end method

.method public setUseLearnAbleTrack(Z)V
    .locals 0

    .line 1068
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$CanBusInfo;->isUseLearnAbleTrack:Z

    return-void
.end method

.method public setWakeUpTheVoice(Z)V
    .locals 0

    .line 1083
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$CanBusInfo;->wakeUpTheVoice:Z

    return-void
.end method

.method public setWindLvWhitSystemLanguage(Z)V
    .locals 0

    .line 1073
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$CanBusInfo;->windLvWhitSystemLanguage:Z

    return-void
.end method
