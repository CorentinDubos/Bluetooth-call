.class Lcom/hzbhd/bluetooth/widget/_b1/DeviceView$PortrateScreenContentObserverVideo;
.super Landroid/database/ContentObserver;
.source "DeviceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PortrateScreenContentObserverVideo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;


# direct methods
.method public constructor <init>(Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/hzbhd/bluetooth/widget/_b1/DeviceView$PortrateScreenContentObserverVideo;->this$0:Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;

    .line 127
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 133
    iget-object p1, p0, Lcom/hzbhd/bluetooth/widget/_b1/DeviceView$PortrateScreenContentObserverVideo;->this$0:Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;->access$100(Lcom/hzbhd/bluetooth/widget/_b1/DeviceView;)V

    return-void
.end method
