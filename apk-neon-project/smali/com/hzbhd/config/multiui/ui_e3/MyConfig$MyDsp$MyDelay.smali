.class public final Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp$MyDelay;
.super Lcom/hzbhd/config/base/Config$Dsp$Delay;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyDelay"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp$MyDelay;",
        "Lcom/hzbhd/config/base/Config$Dsp$Delay;",
        "()V",
        "getDelayLayout",
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

    .line 142
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Dsp$Delay;-><init>()V

    return-void
.end method


# virtual methods
.method public getDelayLayout()Ljava/lang/String;
    .locals 1

    const-string v0, "__e3__dsp__delay_main"

    return-object v0
.end method
