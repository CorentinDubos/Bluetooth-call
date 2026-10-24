.class public final Lcom/hzbhd/config/jar/MyConfig$MyMisc;
.super Lcom/hzbhd/config/base/Config$Misc;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/jar/MyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyMisc"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/hzbhd/config/jar/MyConfig$MyMisc;",
        "Lcom/hzbhd/config/base/Config$Misc;",
        "(Lcom/hzbhd/config/jar/MyConfig;)V",
        "isAppCamera",
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


# instance fields
.field final synthetic this$0:Lcom/hzbhd/config/jar/MyConfig;


# direct methods
.method public constructor <init>(Lcom/hzbhd/config/jar/MyConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/hzbhd/config/jar/MyConfig$MyMisc;->this$0:Lcom/hzbhd/config/jar/MyConfig;

    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Misc;-><init>()V

    return-void
.end method


# virtual methods
.method public isAppCamera()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
