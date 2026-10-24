.class public final Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp$MyBalance;
.super Lcom/hzbhd/config/base/Config$Dsp$Balance;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyBalance"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp$MyBalance;",
        "Lcom/hzbhd/config/base/Config$Dsp$Balance;",
        "()V",
        "get32107SubLayout",
        "",
        "getBalanceLayout",
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

    .line 135
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Dsp$Balance;-><init>()V

    return-void
.end method


# virtual methods
.method public get32107SubLayout()Ljava/lang/String;
    .locals 1

    const-string v0, "__e3__dsp__balance_sub_32107"

    return-object v0
.end method

.method public getBalanceLayout()Ljava/lang/String;
    .locals 1

    const-string v0, "__e3__dsp__balance"

    return-object v0
.end method
