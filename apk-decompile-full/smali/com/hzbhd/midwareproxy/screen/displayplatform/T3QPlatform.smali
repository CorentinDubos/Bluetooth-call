.class public Lcom/hzbhd/midwareproxy/screen/displayplatform/T3QPlatform;
.super Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;
.source "T3QPlatform.java"


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;)V

    .line 8
    const-class p1, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3QPlatform;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3QPlatform;->TAG:Ljava/lang/String;

    return-void
.end method
