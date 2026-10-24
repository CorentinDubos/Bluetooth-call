.class public Lcom/hzbhd/bluetooth/widget/_97/DeviceView;
.super Landroid/widget/LinearLayout;
.source "DeviceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/widget/_97/DeviceView$PortrateScreenContentObserverVideo;
    }
.end annotation


# static fields
.field public static final UPDATE_UI:I = 0x1

.field static btName:Ljava/lang/String; = ""

.field static devieName:Ljava/lang/String; = ""


# instance fields
.field bt_name_edit_id:Landroid/widget/TextView;

.field device_name_edit_id:Landroid/widget/TextView;

.field ll_device:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    new-instance p2, Lcom/hzbhd/bluetooth/widget/_97/DeviceView$1;

    invoke-direct {p2, p0}, Lcom/hzbhd/bluetooth/widget/_97/DeviceView$1;-><init>(Lcom/hzbhd/bluetooth/widget/_97/DeviceView;)V

    iput-object p2, p0, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->mHandler:Landroid/os/Handler;

    .line 99
    iput-object p1, p0, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f040016

    invoke-static {p3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0901ba

    .line 101
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->ll_device:Landroid/widget/LinearLayout;

    const p3, 0x7f090052

    .line 102
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->bt_name_edit_id:Landroid/widget/TextView;

    const p3, 0x7f09011b

    .line 103
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->device_name_edit_id:Landroid/widget/TextView;

    .line 104
    iget-object p3, p0, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->mHandler:Landroid/os/Handler;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 105
    sget-object p3, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->btName:Ljava/lang/String;

    const-string v0, ""

    if-eqz p3, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->bt_name_edit_id:Landroid/widget/TextView;

    sget-object v1, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->btName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_0
    sget-object p3, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->devieName:Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->device_name_edit_id:Landroid/widget/TextView;

    sget-object v0, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->devieName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_1
    invoke-virtual {p0, p2}, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->addView(Landroid/view/View;)V

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "hzbhd_isHfpConnected"

    .line 110
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/hzbhd/bluetooth/widget/_97/DeviceView$PortrateScreenContentObserverVideo;

    invoke-direct {p3, p0}, Lcom/hzbhd/bluetooth/widget/_97/DeviceView$PortrateScreenContentObserverVideo;-><init>(Lcom/hzbhd/bluetooth/widget/_97/DeviceView;)V

    .line 109
    invoke-virtual {p1, p2, p4, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 111
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->setName()V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/widget/_97/DeviceView;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/bluetooth/widget/_97/DeviceView;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->setName()V

    return-void
.end method

.method private setName()V
    .locals 6

    .line 145
    iget-object v0, p0, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hzbhd_isHfpConnected"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 146
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hzbhd_isHfpConnected= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mww"

    invoke-static {v3, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    if-eqz v1, :cond_1

    .line 148
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->devieName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 152
    sget-object v1, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->devieName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x7

    if-le v1, v3, :cond_2

    .line 153
    iget-object v1, p0, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->device_name_edit_id:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->devieName:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->device_name_edit_id:Landroid/widget/TextView;

    const v2, 0x7f0d023b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 158
    :cond_2
    :goto_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothLocalAdapterName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->btName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 162
    sget-object v0, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->btName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_3

    .line 163
    iget-object v0, p0, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->bt_name_edit_id:Landroid/widget/TextView;

    sget-object v1, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->btName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public ShowDevice()V
    .locals 2

    const v0, 0x7f04006a

    .line 114
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->ll_device:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public hideDevice()V
    .locals 2

    const v0, 0x7f04006a

    .line 120
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/widget/_97/DeviceView;->ll_device:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
