.class Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$DeletePhonebookTask;
.super Landroid/os/AsyncTask;
.source "ExpandPhoneContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeletePhonebookTask"
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
.field final synthetic this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V
    .locals 0

    .line 1300
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$DeletePhonebookTask;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1300
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$DeletePhonebookTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .line 1303
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------DeleteCallHistoryTask.doInBackground(), address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    :try_start_0
    aget-object v0, p1, v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v3, 0x1

    .line 1306
    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const/4 v7, 0x2

    if-lez v6, :cond_3

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v7, :cond_0

    goto :goto_0

    .line 1318
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$DeletePhonebookTask;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->contactsDelete(JLjava/lang/String;)V

    goto :goto_0

    .line 1314
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$DeletePhonebookTask;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-virtual {p1, v0, v1, v2}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->setStarred(JI)V

    goto :goto_0

    .line 1310
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$DeletePhonebookTask;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->contactsDelete(JLjava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v7, :cond_4

    goto :goto_0

    .line 1335
    :cond_4
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$DeletePhonebookTask;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->deleteAllsos(Ljava/lang/String;)V

    goto :goto_0

    .line 1331
    :cond_5
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$DeletePhonebookTask;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->deleteAllFavority(Ljava/lang/String;)V

    goto :goto_0

    .line 1327
    :cond_6
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$DeletePhonebookTask;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v5, v0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->contactsDelete(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1343
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1350
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1351
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "------DeleteCallHistoryTask.onPostExecute()--------"

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 1357
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1358
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--------DeleteCallHistoryTask.onPreExecute()--------"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 1

    .line 1363
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1364
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "--------DeleteCallHistoryTask.onProgressUpdate()--------"

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
