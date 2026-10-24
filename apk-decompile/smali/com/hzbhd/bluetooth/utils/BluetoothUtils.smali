.class public Lcom/hzbhd/bluetooth/utils/BluetoothUtils;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showProgressDialog(Landroid/content/Context;I)Landroid/app/ProgressDialog;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hzbhd/bluetooth/utils/BluetoothUtils;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static showProgressDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 3

    const-string v0, "Loading..."

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 10
    invoke-static {p0, v0, p1, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method
