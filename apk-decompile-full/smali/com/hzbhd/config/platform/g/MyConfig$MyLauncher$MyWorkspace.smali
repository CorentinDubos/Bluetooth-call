.class public final Lcom/hzbhd/config/platform/g/MyConfig$MyLauncher$MyWorkspace;
.super Lcom/hzbhd/config/base/Config$Launcher$Workspace;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/platform/g/MyConfig$MyLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyWorkspace"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/hzbhd/config/platform/g/MyConfig$MyLauncher$MyWorkspace;",
        "Lcom/hzbhd/config/base/Config$Launcher$Workspace;",
        "()V",
        "getPlatformDefaultIconArray",
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
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$Workspace;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlatformDefaultIconArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/hzbhd/config/lib/launcher/ComponentPosition;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/hzbhd/config/platform/g/MyConfig$MyLauncher$MyWorkspace$getPlatformDefaultIconArray$1;

    invoke-direct {v0}, Lcom/hzbhd/config/platform/g/MyConfig$MyLauncher$MyWorkspace$getPlatformDefaultIconArray$1;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method
