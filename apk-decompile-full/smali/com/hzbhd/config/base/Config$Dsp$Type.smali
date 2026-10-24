.class public Lcom/hzbhd/config/base/Config$Dsp$Type;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/base/Config$Dsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$Dsp$Type;",
        "",
        "()V",
        "getTypeLayout",
        "",
        "getTypePDrawable",
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

    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeLayout()Ljava/lang/String;
    .locals 1

    const-string v0, "__01__dsp__eqtype"

    return-object v0
.end method

.method public getTypePDrawable()Ljava/lang/String;
    .locals 1

    const-string v0, "__01__dsp__dsptypeview_p"

    return-object v0
.end method
