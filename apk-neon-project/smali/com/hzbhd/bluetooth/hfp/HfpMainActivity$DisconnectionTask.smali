.class Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$DisconnectionTask;
.super Landroid/os/AsyncTask;
.source "HfpMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V
    .locals 0

    .line 1366
    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$DisconnectionTask;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1366
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$DisconnectionTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    const-string p1, "HfpMainActivity"

    const-string v0, "----DisconnectionTask()----"

    .line 1371
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0xbb8

    .line 1373
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 1375
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqBluetoothDisconnectAll()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1378
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1385
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 1390
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1391
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$DisconnectionTask;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    const v1, 0x7f0d0174

    const/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showProgressDialog(II)V

    return-void
.end method
