.class public Lcom/hzbhd/midwareproxy/screen/displayplatform/T3NPlatform;
.super Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;
.source "T3NPlatform.java"


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;)V

    .line 21
    const-class p1, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3NPlatform;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3NPlatform;->TAG:Ljava/lang/String;

    return-void
.end method
