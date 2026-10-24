.class public final Lcom/hzbhd/config/platform/g/MyConfig$MyLauncher;
.super Lcom/hzbhd/config/base/Config$Launcher;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/platform/g/MyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyLauncher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/config/platform/g/MyConfig$MyLauncher$MyWorkspace;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/hzbhd/config/platform/g/MyConfig$MyLauncher;",
        "Lcom/hzbhd/config/base/Config$Launcher;",
        "()V",
        "workspace",
        "Lcom/hzbhd/config/base/Config$Launcher$Workspace;",
        "getWorkspace",
        "()Lcom/hzbhd/config/base/Config$Launcher$Workspace;",
        "setWorkspace",
        "(Lcom/hzbhd/config/base/Config$Launcher$Workspace;)V",
        "MyWorkspace",
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
.field private workspace:Lcom/hzbhd/config/base/Config$Launcher$Workspace;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher;-><init>()V

    .line 24
    new-instance v0, Lcom/hzbhd/config/platform/g/MyConfig$MyLauncher$MyWorkspace;

    invoke-direct {v0}, Lcom/hzbhd/config/platform/g/MyConfig$MyLauncher$MyWorkspace;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Launcher$Workspace;

    iput-object v0, p0, Lcom/hzbhd/config/platform/g/MyConfig$MyLauncher;->workspace:Lcom/hzbhd/config/base/Config$Launcher$Workspace;

    return-void
.end method


# virtual methods
.method public getWorkspace()Lcom/hzbhd/config/base/Config$Launcher$Workspace;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/hzbhd/config/platform/g/MyConfig$MyLauncher;->workspace:Lcom/hzbhd/config/base/Config$Launcher$Workspace;

    return-object v0
.end method

.method public setWorkspace(Lcom/hzbhd/config/base/Config$Launcher$Workspace;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/hzbhd/config/platform/g/MyConfig$MyLauncher;->workspace:Lcom/hzbhd/config/base/Config$Launcher$Workspace;

    return-void
.end method
