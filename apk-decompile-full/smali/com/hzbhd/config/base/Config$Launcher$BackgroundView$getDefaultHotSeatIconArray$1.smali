.class public final Lcom/hzbhd/config/base/Config$Launcher$BackgroundView$getDefaultHotSeatIconArray$1;
.super Ljava/util/ArrayList;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/config/base/Config$Launcher$BackgroundView;->getDefaultHotSeatIconArray()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/hzbhd/config/lib/launcher/ComponentPosition;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "com/hzbhd/config/base/Config$Launcher$BackgroundView$getDefaultHotSeatIconArray$1",
        "Ljava/util/ArrayList;",
        "Lcom/hzbhd/config/lib/launcher/ComponentPosition;",
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
.method constructor <init>()V
    .locals 4

    .line 419
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 421
    new-instance v0, Lcom/hzbhd/config/lib/launcher/ComponentPosition;

    const-string v1, "Radio"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/hzbhd/config/lib/launcher/ComponentPosition;-><init>(Ljava/lang/String;III)V

    invoke-virtual {p0, v0}, Lcom/hzbhd/config/base/Config$Launcher$BackgroundView$getDefaultHotSeatIconArray$1;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v0, Lcom/hzbhd/config/lib/launcher/ComponentPosition;

    const-string v1, "MediaMusic"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/hzbhd/config/lib/launcher/ComponentPosition;-><init>(Ljava/lang/String;III)V

    invoke-virtual {p0, v0}, Lcom/hzbhd/config/base/Config$Launcher$BackgroundView$getDefaultHotSeatIconArray$1;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v0, Lcom/hzbhd/config/lib/launcher/ComponentPosition;

    const-string v1, "BtPhone"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/hzbhd/config/lib/launcher/ComponentPosition;-><init>(Ljava/lang/String;III)V

    invoke-virtual {p0, v0}, Lcom/hzbhd/config/base/Config$Launcher$BackgroundView$getDefaultHotSeatIconArray$1;->add(Ljava/lang/Object;)Z

    .line 424
    new-instance v0, Lcom/hzbhd/config/lib/launcher/ComponentPosition;

    const-string v1, "Setting"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/hzbhd/config/lib/launcher/ComponentPosition;-><init>(Ljava/lang/String;III)V

    invoke-virtual {p0, v0}, Lcom/hzbhd/config/base/Config$Launcher$BackgroundView$getDefaultHotSeatIconArray$1;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public bridge contains(Lcom/hzbhd/config/lib/launcher/ComponentPosition;)Z
    .locals 0

    .line 419
    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 419
    instance-of v0, p1, Lcom/hzbhd/config/lib/launcher/ComponentPosition;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/hzbhd/config/lib/launcher/ComponentPosition;

    invoke-virtual {p0, p1}, Lcom/hzbhd/config/base/Config$Launcher$BackgroundView$getDefaultHotSeatIconArray$1;->contains(Lcom/hzbhd/config/lib/launcher/ComponentPosition;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge getSize()I
    .locals 1

    .line 419
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge indexOf(Lcom/hzbhd/config/lib/launcher/ComponentPosition;)I
    .locals 0

    .line 419
    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 419
    instance-of v0, p1, Lcom/hzbhd/config/lib/launcher/ComponentPosition;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/hzbhd/config/lib/launcher/ComponentPosition;

    invoke-virtual {p0, p1}, Lcom/hzbhd/config/base/Config$Launcher$BackgroundView$getDefaultHotSeatIconArray$1;->indexOf(Lcom/hzbhd/config/lib/launcher/ComponentPosition;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge lastIndexOf(Lcom/hzbhd/config/lib/launcher/ComponentPosition;)I
    .locals 0

    .line 419
    invoke-super {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 419
    instance-of v0, p1, Lcom/hzbhd/config/lib/launcher/ComponentPosition;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/hzbhd/config/lib/launcher/ComponentPosition;

    invoke-virtual {p0, p1}, Lcom/hzbhd/config/base/Config$Launcher$BackgroundView$getDefaultHotSeatIconArray$1;->lastIndexOf(Lcom/hzbhd/config/lib/launcher/ComponentPosition;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final bridge remove(I)Lcom/hzbhd/config/lib/launcher/ComponentPosition;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lcom/hzbhd/config/base/Config$Launcher$BackgroundView$getDefaultHotSeatIconArray$1;->removeAt(I)Lcom/hzbhd/config/lib/launcher/ComponentPosition;

    move-result-object p1

    return-object p1
.end method

.method public bridge remove(Lcom/hzbhd/config/lib/launcher/ComponentPosition;)Z
    .locals 0

    .line 419
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 419
    instance-of v0, p1, Lcom/hzbhd/config/lib/launcher/ComponentPosition;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/hzbhd/config/lib/launcher/ComponentPosition;

    invoke-virtual {p0, p1}, Lcom/hzbhd/config/base/Config$Launcher$BackgroundView$getDefaultHotSeatIconArray$1;->remove(Lcom/hzbhd/config/lib/launcher/ComponentPosition;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge removeAt(I)Lcom/hzbhd/config/lib/launcher/ComponentPosition;
    .locals 0

    .line 419
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/config/lib/launcher/ComponentPosition;

    return-object p1
.end method

.method public final bridge size()I
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/hzbhd/config/base/Config$Launcher$BackgroundView$getDefaultHotSeatIconArray$1;->getSize()I

    move-result v0

    return v0
.end method
