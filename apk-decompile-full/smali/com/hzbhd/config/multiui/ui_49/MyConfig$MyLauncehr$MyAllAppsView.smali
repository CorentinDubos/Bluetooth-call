.class public final Lcom/hzbhd/config/multiui/ui_49/MyConfig$MyLauncehr$MyAllAppsView;
.super Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_49/MyConfig$MyLauncehr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyAllAppsView"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_49/MyConfig$MyLauncehr$MyAllAppsView;",
        "Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;",
        "()V",
        "getRule",
        "",
        "getxSize",
        "",
        "isOtherAppNewPage",
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

    .line 62
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;-><init>()V

    return-void
.end method


# virtual methods
.method public getRule()[I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    return-object v1
.end method

.method public getxSize()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public isOtherAppNewPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
