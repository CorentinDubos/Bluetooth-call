.class public Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;
.super Ljava/lang/Object;
.source "BackCameraUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$IBackCameraCallback;
    }
.end annotation


# instance fields
.field private iBackCameraCallback:Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$IBackCameraCallback;

.field private mContext:Landroid/content/Context;

.field misBackCameraContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$1;-><init>(Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;->misBackCameraContentObserver:Landroid/database/ContentObserver;

    .line 24
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;->registerContentObserver()V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;)Landroid/content/Context;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;)Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$IBackCameraCallback;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;->iBackCameraCallback:Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$IBackCameraCallback;

    return-object p0
.end method


# virtual methods
.method public registerContentObserver()V
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gpioLevel"

    .line 43
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;->misBackCameraContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 42
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 48
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "channelId"

    .line 49
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;->misBackCameraContentObserver:Landroid/database/ContentObserver;

    .line 48
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public setBackCameraCallback(Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$IBackCameraCallback;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;->iBackCameraCallback:Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$IBackCameraCallback;

    return-void
.end method
