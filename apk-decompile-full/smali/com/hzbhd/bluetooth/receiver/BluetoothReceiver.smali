.class public Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver$ClearUserDataObserver;
    }
.end annotation


# static fields
.field private static final CLEAR_USER_DATA:I = 0x1

.field private static final OP_FAILED:I = 0x2

.field private static final OP_SUCCESSFUL:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    new-instance v0, Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver$1;-><init>(Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;)Landroid/os/Handler;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private clearData(Landroid/content/Context;)V
    .locals 2

    .line 30
    new-instance v0, Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver$ClearUserDataObserver;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver$ClearUserDataObserver;-><init>(Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;)V

    const-string v1, "activity"

    .line 31
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const-string v1, "com.android.providers.contacts"

    .line 32
    invoke-virtual {p1, v1, v0}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result p1

    const-string v0, "BluetoothReceiver"

    if-nez p1, :cond_0

    const-string p1, "Couldnt clear application user data for package:com.android.providers.contacts"

    .line 34
    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Already clear all data, and then strat to sync again!"

    .line 36
    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----onReceive----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothReceiver"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.hzbhd.android.settings.ACTION_FACTORY_RESET"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 25
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;->clearData(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
