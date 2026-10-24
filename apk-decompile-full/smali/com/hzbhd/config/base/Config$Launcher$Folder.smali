.class public Lcom/hzbhd/config/base/Config$Launcher$Folder;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/base/Config$Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Folder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$Launcher$Folder;",
        "",
        "()V",
        "getXSize",
        "",
        "getYSize",
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

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getXSize()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final getYSize()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
