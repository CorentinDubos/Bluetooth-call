.class public Lcom/hzbhd/config/base/Config$BLink;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/base/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BLink"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$BLink;",
        "",
        "()V",
        "isAutoConnAndroidAuto",
        "",
        "isDzBlink",
        "isGenerageIcon",
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

    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAutoConnAndroidAuto()Z
    .locals 1

    .line 1043
    sget-object v0, Lcom/hzbhd/config/androidconfig/BHDAndroidConfigXML$SHARED_KEY;->ANDROID_AUTO_CONNECTED_IN_BACKGROUND:Lcom/hzbhd/config/androidconfig/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v0}, Lcom/hzbhd/config/androidconfig/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDzBlink()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGenerageIcon()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
